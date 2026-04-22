# typed: false
# frozen_string_literal: true

cask "foliage" do
  version "0.6.0"

  on_arm do
    sha256 "53751ba5a261eb854c55db8a71fab68a11a9f4e4f3e5420208963c62fbf0b0fe"
    url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "333f4e9ae95e054b9841848ee8b3673c3cf44e27229143dda1126b406e6cdb0a"
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
