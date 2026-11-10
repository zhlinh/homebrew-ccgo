class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.10.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "fb6dc6bfb3719f78d7cb4165f81989467f729e484904a0030ad02e9c3c8861e2" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "f6a80f847f4973ac217a38262cffb7664a9f7fb657c32bab7d57a90d9ca94266" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66a1669856fc4c31bc358c91a488670e10d5fda09f937b638891754cdded3526" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b916f06d470b0ddbec0dd046bbd7751b2db0fce82413eb06a30c847641de6b7" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
