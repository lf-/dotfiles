#!/usr/bin/env bash

brew bundle check -v || brew bundle install -v
brew bundle cleanup --cask
