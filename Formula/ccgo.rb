class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "88b2c5caf86238d3cba6b65c3ad41b1de30badd0d81b9423dfcefa117b20d9bb" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "85f789a52e559a55846dee737b9bfd4b58489a98a66ff05ed6ab600dee7bda57" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68a9a22794da7f7bb48e80387555138c0ee8a74d90863558289f02d206bef6df" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63f95c1e062b13dc287040270cbd452c716f60c4a404eb2ac0f54f73b4261c96" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
