class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.8.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "d96911242d5173a45a8937b4a7605b093439276dcee002672e48a7468095363b" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "26c888f5600f276589c341edaaf470a9ba6f87343fe425c1331e150d06da5c4e" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae29bf517f1d24cbb1d9bb6a32cc3c5a8a25fb5ab6a2745b2af6b94c197e5f8c" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5dd7e74d599db0bcf4e6f4dcd82d6f33e18e84455d4372249be9852d7da2c120" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
