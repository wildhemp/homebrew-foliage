class Foliage < Formula
  desc "Desktop app for orchestrating parallel AI coding sessions across git worktrees"
  homepage "https://foliage.dev"
  version "0.6.0"
  license "MIT"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_aarch64.AppImage"
      sha256 "dc8988f43c2877d522f19c3dc84ec3b80190f45a2b6ddde64da3b9e83efbe70e"
    else
      url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_amd64.AppImage"
      sha256 "43583b95daee5af9465e507cc5d3abc2ac8d3e113e4c20215d34d03942f765e6"
    end
  end

  def install
    bin.install Dir["foliage_*"].first => "foliage"
  end

  test do
    assert_match "foliage", shell_output("#{bin}/foliage --version 2>&1", 1)
  end
end
