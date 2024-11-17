#!/usr/bin/env bash
set -euo pipefail

# Install homebrew
if ! command -v brew &> /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install from Brewfile
if ! command -v awscli &> /dev/null; then
  echo "Installing from Brewfile..."
  brew bundle
fi

# Install Google Cloud SDK
if ! command -v gcloud &> /dev/null; then
  echo "Installing Google Cloud SDK..."
  curl https://sdk.cloud.google.com | bash
fi
