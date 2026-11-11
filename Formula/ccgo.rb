class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.10.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "3c8468cc90fcb867379c34dfa4f36784218d584fa80ec68feb4e04bf922dab9f" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "a8ec158dde43b2111091d5f5f56f856b36817e55fb0122340094a61449cc1ec3" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "06265389b335891b4630a489b3856e8f837c4726fe0a4c816cf9e5fa769cfcd9" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6942f6736450117bf5919193594bfa468eb94ea907642920c41e754d5f94f336" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
