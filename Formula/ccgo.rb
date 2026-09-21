class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.8.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "2bef9bc6ba072721476ede9a37d93010b209fae44f9de1158270ca9362529230" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "9d24c0574862048df842aa3791f53aece48f47400133b27195f2ff8a078a2f16" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "659fc7c5387bb241bd2de98fb9ded4c9d0ea5bf17108ca450112c1bb5b37bc55" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad44882f6f6c300763ea2b2f7f1849e5e20870cb7c39d4a6fbe5ce07381c9ceb" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
