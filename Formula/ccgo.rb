class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.10.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "da0227803b1c9b9c86b2f45da2dbef92ac131392015c6288ea0de9c9740bc529" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "ce19fff41da45a944e1bcd0dbe1df4ad92d0e51e57c9ad0f8fd752805106b7b0" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ebb3134e5d60da16053689352f2ed042eef8336c5c842de5a4e41dc079196dde" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4e9edfcefe9dec750a6847a135864f5684177c973dba1e597803268acb96863" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
