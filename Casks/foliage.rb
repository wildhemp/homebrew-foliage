# typed: false
# frozen_string_literal: true

cask "foliage" do
  version "0.7.0"

  on_arm do
    sha256 "8be0c0d6cb63b9038a5873487f26994c4c570f41da1622b2286036f6e0431814"
    url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "1b5166e891bacf60f55b42c942b134a1337053f1251465d873c5bf86b634aac4"
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
