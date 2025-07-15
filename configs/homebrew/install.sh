#!/usr/bin/env bash
set -xeu

brew bundle check -v || brew bundle install -v
brew bundle cleanup --cask
