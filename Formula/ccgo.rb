class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.10.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "be691cd9c8bac4154719fc6416d30d476037f8254515e66590e465451670b729" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "a3d48be8c6be55d142a85eae7c952464b9281a90ec7ed35868e46697d2ed5bd8" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ff813f221ea0b3ea2f19cb3cb8561fd00f0b6fb627b3d0a6505dd4f71f3fbc2" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9fc97c9b46e9c95fa2c93de28371bd368c9f34b1926ae04dbb684ab5b8d7e0eb" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
