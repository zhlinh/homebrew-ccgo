class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.8.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "eb79e0f3c8b174200ea392ef486298891752e7036c6e8386c6e18361a36d4a22" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "4cec1c82afd16f60ab497ba003fe4a175dab51ca13cd82aecef1875dcfbaf322" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8fea62cc7a2ded5904fc0fb93bba6c798362d1b97d1ef8369b27205558f296b8" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a78dd2092910c82fb25cba357760e616eba2b497f039f5fb3cf4994bf0139187" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
