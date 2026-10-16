class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.8.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "ec2d9d6016742c05cea58b6b0e05fc36a3ad6dbc3ab90f5275bc12513d6efda4" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "1b5b3b620cb2730c11217f03371429e9309c8a3bb7fe07b1be262eacad91fe70" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ce96bb6f329c8ceab57d8c2fe8123f5a708dfedd8eb09fe39f99854698b28829" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "716a7d9b3ff90dffdc56fe1dd040721bfd42c882410f895de47becb834474b06" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
