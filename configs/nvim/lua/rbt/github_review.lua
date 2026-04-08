-- Shamelessly taken from https://github.com/9999years/dotfiles/blob/7efb0de9a894ff1d1b52f3e37192da6a50efd639/config/nvim/lua/rbt/github_review.lua
local M = {}

M.namespace = vim.api.nvim_create_namespace("github_review")
M.comments_by_path = {}
M.git_root = nil
M.augroup = vim.api.nvim_create_augroup("rbt.github_review", { clear = true })

vim.diagnostic.config(
  { virtual_text = true, signs = false, underline = false },
  M.namespace
)

function M.define_cmd()
  require("batteries").cmd {
    nargs = "?",
    "GitHubReview",
    function(opts)
      local pr_number = opts.fargs[1]
      if pr_number then
        M.fetch(pr_number)
      else
        M.clear()
      end
    end,
    "Show GitHub PR review comments as diagnostics",
  }
end

function M.clear()
  vim.diagnostic.reset(M.namespace)
  M.comments_by_path = {}
  M.head_sha = nil
  vim.api.nvim_clear_autocmds { group = M.augroup }
end

local function format_comment(comment)
  local author = comment.user and comment.user.login or "unknown"
  local body = comment.body:gsub("\r", "")
  return "@" .. author .. ": " .. body
end

local function parse_diff_hunks(diff_output)
  local hunks = {}
  for old_start, old_count, new_start, new_count in
    diff_output:gmatch("@@ %-(%d+),?(%d*) %+(%d+),?(%d*) @@")
  do
    table.insert(hunks, {
      old_start = tonumber(old_start),
      old_count = tonumber(old_count ~= "" and old_count or "1"),
      new_start = tonumber(new_start),
      new_count = tonumber(new_count ~= "" and new_count or "1"),
    })
  end
  return hunks
end

local function adjust_line(line, hunks)
  local offset = 0
  for _, h in ipairs(hunks) do
    if line < h.old_start then
      return line + offset
    end
    if line < h.old_start + h.old_count then
      -- line falls inside this hunk's old range; best-effort clamp
      local rel = line - h.old_start
      return math.min(h.new_start + rel, h.new_start + math.max(h.new_count - 1, 0))
    end
    offset = offset + (h.new_count - h.old_count)
  end
  return line + offset
end

local function get_hunks_for_file(path)
  if not M.head_sha or not M.git_root then
    return nil
  end
  local result = vim.system(
    { "git", "diff", M.head_sha, "--", path },
    { cwd = M.git_root, text = true }
  ):wait()
  if result.code ~= 0 or result.stdout == "" then
    return nil
  end
  return parse_diff_hunks(result.stdout)
end

function M.apply_to_buffer(bufnr)
  if not M.git_root then
    return
  end
  local bufname = vim.api.nvim_buf_get_name(bufnr)
  if bufname == "" then
    return
  end
  local relative_path = vim.fs.relpath(M.git_root, bufname)
  if not relative_path then
    return
  end
  local comments = M.comments_by_path[relative_path]
  if not comments then
    return
  end
  local hunks = get_hunks_for_file(relative_path)
  local diagnostics = {}
  for _, comment in ipairs(comments) do
    if comment.line then
      local line = comment.line
      local start_line = comment.start_line
      if hunks then
        line = adjust_line(line, hunks)
        if start_line then
          start_line = adjust_line(start_line, hunks)
        end
      end
      local diag = {
        lnum = (start_line or line) - 1,
        end_lnum = start_line and (line - 1) or nil,
        col = 0,
        severity = vim.diagnostic.severity.INFO,
        message = format_comment(comment),
        source = "gh-review",
      }
      table.insert(diagnostics, diag)
    end
  end
  vim.diagnostic.set(M.namespace, bufnr, diagnostics)
end

function M.apply_to_all_buffers()
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(bufnr) then
      M.apply_to_buffer(bufnr)
    end
  end
end

-- stylua: ignore
local GRAPHQL_QUERY = [[
query($owner: String!, $repo: String!, $pr: Int!, $endCursor: String) {
  repository(owner: $owner, name: $repo) {
    pullRequest(number: $pr) {
      headRefOid
      reviewThreads(first: 100, after: $endCursor) {
        pageInfo { hasNextPage endCursor }
        nodes {
          isResolved
          comments(first: 100) {
            nodes { body path line startLine author { login } }
          }
        }
      }
    }
  }
}]]

--- Parse GraphQL response into a flat list of unresolved review comments.
local function parse_comments(stdout)
  local data = vim.json.decode(stdout, { luanil = { object = true, array = true } })
  local pr = data.data.repository.pullRequest
  local threads = pr.reviewThreads.nodes
  local comments = {}
  for _, thread in ipairs(threads) do
    if not thread.isResolved then
      for _, comment in ipairs(thread.comments.nodes) do
        table.insert(comments, {
          path = comment.path,
          line = comment.line,
          start_line = comment.startLine,
          body = comment.body,
          user = comment.author and { login = comment.author.login },
        })
      end
    end
  end
  return comments, pr.headRefOid
end

--- Group comments by their file path.
local function group_by_path(comments)
  local by_path = {}
  for _, comment in ipairs(comments) do
    local path = comment.path
    if path then
      if not by_path[path] then
        by_path[path] = {}
      end
      table.insert(by_path[path], comment)
    end
  end
  return by_path
end

function M.fetch(pr_number)
  if not tonumber(pr_number) then
    vim.notify("PR number must be numeric", vim.log.levels.ERROR)
    return
  end

  M.clear()

  local git_root = vim.fs.root(0, ".git")
  if not git_root then
    vim.notify("not in a git repository", vim.log.levels.ERROR)
    return
  end
  M.git_root = git_root

  local repo_result = vim.system(
    { "gh", "repo", "view", "--json", "owner,name" },
    { cwd = git_root, text = true }
  ):wait()
  if repo_result.code ~= 0 then
    vim.notify("failed to get repo info: " .. (repo_result.stderr or ""), vim.log.levels.ERROR)
    return
  end
  local repo = vim.json.decode(repo_result.stdout)

  vim.system(
    {
      "gh", "api", "graphql", "--paginate",
      "-F", "owner=" .. repo.owner.login,
      "-F", "repo=" .. repo.name,
      "-F", "pr=" .. pr_number,
      "-f", "query=" .. GRAPHQL_QUERY,
    },
    { cwd = git_root, text = true },
    function(result)
      vim.schedule(function()
        if result.code ~= 0 then
          vim.notify(
            "gh api failed: " .. (result.stderr or ""),
            vim.log.levels.ERROR
          )
          return
        end

        local ok, comments, head_sha = pcall(parse_comments, result.stdout)
        if not ok then
          vim.notify(
            "failed to parse JSON: " .. tostring(comments),
            vim.log.levels.ERROR
          )
          return
        end

        M.head_sha = head_sha
        M.comments_by_path = group_by_path(comments)
        M.apply_to_all_buffers()

        vim.api.nvim_create_autocmd("BufRead", {
          group = M.augroup,
          callback = function(args)
            M.apply_to_buffer(args.buf)
          end,
        })

        vim.notify(
          "Loaded " .. #comments .. " review comments for PR #" .. pr_number
        )
      end)
    end
  )
end

return M
