class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.8.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "1e1575342f337f596c52f863c6c63bbc1cab27e618f8bffc12914404e8d4c7f3" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "bc80582e1fdcf9d2a77ae623d3bb1dd8cdc8241c1821f98d880a469b83ef0154" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c69656421188157f565c9d109e54cceee544203df98b2b166f2041eb16b400b4" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19be071fc0dce44b222e88f24ee68a561ceebf5f7e420ac7f4b311d2b0f9ff31" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
