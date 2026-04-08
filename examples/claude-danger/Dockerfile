FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \
  git \
  && curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
  && apt-get install -y --no-install-recommends nodejs \
  && npm i -g @anthropic-ai/claude-code@latest \
  && useradd -m -s /bin/bash agent \
  && install -d -m 700 -o agent -g agent /home/agent/.claude \
  && install -d -m 755 -o agent -g agent /home/agent/workspace \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /home/agent
