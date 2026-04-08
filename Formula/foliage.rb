class Foliage < Formula
  desc "Desktop app for orchestrating parallel AI coding sessions across git worktrees"
  homepage "https://foliage.dev"
  version "0.5.1"
  license "MIT"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_aarch64.AppImage"
      sha256 "30be7e18d85cb8a92332f7b3403f3ff98e70621fc92602d66369ea6449cbc8cb"
    else
      url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_amd64.AppImage"
      sha256 "8c7c9ab3487210e5e5a0a2e1d964554b128aad43ddd582380699f68882287772"
    end
  end

  def install
    bin.install Dir["foliage_*"].first => "foliage"
  end

  test do
    assert_match "foliage", shell_output("#{bin}/foliage --version 2>&1", 1)
  end
end
