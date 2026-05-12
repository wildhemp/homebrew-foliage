# typed: false
# frozen_string_literal: true

cask "foliage" do
  version "0.7.1"

  on_arm do
    sha256 "1433a66efa62dfc6c839570093d301978a9aceca2c7a386ca3c50c5426dcde94"
    url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "a8db2c261b860a822d4c22e7b2bd7b3d8605e26c5a81a0fb88df6c79e9aa53b8"
    url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_x64.dmg"
  end

  name "Foliage"
  desc "Desktop app for orchestrating parallel AI coding sessions across git worktrees"
  homepage "https://foliage.dev"

  livecheck do
    url "https://github.com/wildhemp/foliage-site/releases/latest"
    strategy :github_latest
  end

  app "foliage.app"

  zap trash: [
    "~/Library/Application Support/com.wildhemp.foliage",
    "~/Library/Caches/com.wildhemp.foliage",
    "~/Library/Preferences/com.wildhemp.foliage.plist",
    "~/Library/Saved Application State/com.wildhemp.foliage.savedState",
  ]
end
