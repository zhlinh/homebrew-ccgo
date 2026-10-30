class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "05cec5384ab23a8177d947e7ae01aedd055ba33ca2939a6db7a80402d64aebef" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "2ad2f8c1d042558aae720ba034fdd124b4d6253f86fe5674e2e163a39e3aed34" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff28c5f1a05b50b61add4c0232fc6ba9b369eaa0ac848619bff12a5489537b80" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4e8aea37cb0dd271edb24b5de765c571da66806eeb709135b59552ed882c6ce" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
