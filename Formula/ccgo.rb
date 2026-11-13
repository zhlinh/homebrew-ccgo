class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.10.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "c4eea2e57f088cad4a830a0d5fa339e3b7ce073efa1188724fde677389856707" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "f29ce5578a62879edbadbc7bce531a128f2ba86f632f4a8c8528a9feaa7db4fe" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b39fbc42a7d7eff1d56385f5302e85a0532b4ed167db050629fedfb1664a8f95" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed6d603c7d46ac94960106eec319ceb11965f27bd8c0f528a790152e75fbf149" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
