class Foliage < Formula
  desc "Desktop app for orchestrating parallel AI coding sessions across git worktrees"
  homepage "https://foliage.dev"
  version "0.3.9"
  license "MIT"

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_aarch64.AppImage"
      sha256 "e729af437c28d92a23d4ce0eef0659b02a0c3d90ba9402a365a5cea7e4b84262"
    else
      url "https://github.com/wildhemp/foliage-site/releases/download/v#{version}/foliage_#{version}_amd64.AppImage"
      sha256 "18066c11c896f6c68d0edde3e140e28e1555070ea9fc3c235b3c78dd54b60e89"
    end
  end

  def install
    bin.install Dir["foliage_*"].first => "foliage"
  end

  test do
    assert_match "foliage", shell_output("#{bin}/foliage --version 2>&1", 1)
  end
end
