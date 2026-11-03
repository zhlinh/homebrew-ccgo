class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.10.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "d6f5d93e310bc3956fc1c9eaa67f62e540c8657946f33a02d03277e8ebc3d7de" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "13271fed7ee1c7fb3891006f73aa5623baf533a45d925679a5bc2706a361cbbe" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b34c7b8741e1e3c69c6069dde3e5fa3fa875bc495a3ae17ba48a76e4a1ca6e17" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8de8c58cd70589d1dc90b546eb46254003bb066639e323685235e2d4b2a2b80b" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
