class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.10.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "15b74f16e72fde66e5776a407890e4a1e8e151e8301d092672d6b8fc91cc4c44" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "bf1b892421b0b6a2b733dd62e694eaff8912584768fc71fdbeb4ba0772ec9369" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b4d961bd625699a83a036fc0f1ec6f93e5c2bbc5d8161058cb4673e055a0663" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "810df9ea6ba66b232202a6893f15e9dcfc9b963cb94f28e1e9122c0cce2323b1" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
