class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.8.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "2d6c56df351c3b157b5598fa6fa4b1e3464ee3788159ac2dd499e76abe7f2d72" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "6bbfeee57dfe8d585db00ac523bb9107e618ca59eaa3738f819ff314b6a5f6aa" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "17778076f4c64bf22d19c7107f24d26c5caf5834f43f7563cfcb8190e9e6a3bc" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1dfbec3aadab2b61a6527c0651b828f4006ab245ac4b73f4e30ccc4974c2440b" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
