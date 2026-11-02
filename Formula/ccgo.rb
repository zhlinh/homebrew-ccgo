class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "3204643ef9fe84bbcc8239ff29464e3ff295332e2dc1f7c18200c217e9a68157" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "2308489860073b33db802fec35e8be51cf8bdbcd02cb3be4daef92c91d20d5b6" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b633276b45c7aaf0b03e7647b7e0351c90f1b19114ed839d12208de99a1559db" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58c916c9ba90c1e7dc5d06798653166b8e2b3517fa280c6a8eb246f8a26b02d7" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
