class Foliage < Formula
  desc "Desktop app for orchestrating parallel AI coding sessions across git worktrees"
  homepage "https://foliage.dev"
  version "0.5.2"
  license "MIT"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_aarch64.AppImage"
      sha256 "3dab86b5115cf3ef1ddf8823eb0e051297713feab2185453a531a48a4c242d50"
    else
      url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_amd64.AppImage"
      sha256 "cb9a36f9b1adecb5c627ad6a8fa5ae7e34eaa513a5d3fbe383c8c042c6461481"
    end
  end

  def install
    bin.install Dir["foliage_*"].first => "foliage"
  end

  test do
    assert_match "foliage", shell_output("#{bin}/foliage --version 2>&1", 1)
  end
end
