class Foliage < Formula
  desc "Desktop app for orchestrating parallel AI coding sessions across git worktrees"
  homepage "https://foliage.dev"
  version "0.6.5"
  license "MIT"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_aarch64.AppImage"
      sha256 "29ab480dfcfcc548ce2e29c13860ae6ad0158056fb2f56aedf7688e36188b56f"
    else
      url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_amd64.AppImage"
      sha256 "27194591cb1e1895b319ec7c0062bb8d0aeb586c8aaab5fb0abe4e203cf80fc8"
    end
  end

  def install
    bin.install Dir["foliage_*"].first => "foliage"
  end

  test do
    assert_match "foliage", shell_output("#{bin}/foliage --version 2>&1", 1)
  end
end
