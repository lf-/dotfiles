import os
import re

PROJECT_ROOT = './'

def get_transitive_imports(rel_path, visited):
  if rel_path in visited:
    return []
  visited.add(rel_path)
  with open(os.path.join(PROJECT_ROOT, rel_path), 'r', encoding='utf-8') as f:
    content = f.read()
  imports = re.findall(r'^import "(.*)";\n', content, flags=re.MULTILINE)
  res = []
  for child in sorted(imports):
    res += get_transitive_imports(child, visited)
  res += [rel_path]
  return res

print('\n'.join(get_transitive_imports('protos/perfetto/trace/trace.proto', set())))

