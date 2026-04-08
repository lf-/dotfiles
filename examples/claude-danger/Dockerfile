FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV HOME=/home/agent
ENV PATH=/home/agent/.local/bin:/home/agent/.claude/local:$PATH

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  git \
  && useradd -m -s /bin/bash agent \
  && install -d -m 700 -o agent -g agent /home/agent/.claude \
  && install -d -m 755 -o agent -g agent /home/agent/workspace \
  && su agent -c 'HOME=/home/agent bash -lc "curl -fsSL https://claude.ai/install.sh | bash"' \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /home/agent
