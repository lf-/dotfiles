#!/usr/bin/env bash

brew bundle check || brew bundle install
brew bundle cleanup --cask --force
