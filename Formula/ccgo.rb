class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.8.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "d29ca9b81a8a3e00eac2216cf146ad8df9ab8a076d735110ebf6a3542055c74a" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "8b71d3e378c3f11062d62188b99e6181b4bdd71e75af12808bae66d8aebe1088" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5720828ead91588edc92f08ca0fa7d31099e4fe808a189e80ae54f1ce2e4a4b5" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "042b9e56b67906121797138146d66c372cadcb4d48865212ddb79a870f2e1557" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
