# typed: false
# frozen_string_literal: true

cask "foliage" do
  version "0.5.1"

  on_arm do
    sha256 "e541d87b383124c2bd15a52b6c2d0bb9e2f7d8d29436bee18ea7e292f24cb60c"
    url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "9965799729aa36ca96ef9fd5f5609bde3a3a36a4f89f3f0684866569a6a12a22"
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
