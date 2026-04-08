# typed: false
# frozen_string_literal: true

cask "foliage" do
  version "0.5.2"

  on_arm do
    sha256 "79d1c680d4d2cb1613208a487f27fe2f8cb54381c23e468f6e98562dc4a00b5b"
    url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "ad92a9aa5dae7db8b4fa6a6699bcae233cb6fa68d6b687ba3ba7e2ba8e1e337a"
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
