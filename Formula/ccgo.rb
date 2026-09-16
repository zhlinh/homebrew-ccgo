class Ccgo < Formula
  desc "A high-performance C++ cross-platform build CLI"
  homepage "https://github.com/zhlinh/ccgo"
  version "3.8.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-apple-darwin.tar.gz"
      sha256 "12310516798ba18d30c5fbef2b8053a83cdeaee7110ea225b234b8a947d0bc9f" # darwin-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-apple-darwin.tar.gz"
      sha256 "1d871fd0b628a176f6c121a5dadabe619b68104a97e652ed3c2d03b4caa11279" # darwin-x86_64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "859379bbccb49c54af65cc0df0a29576e83647468f4f11476915b30789d33d81" # linux-arm64
    end
    if Hardware::CPU.intel?
      url "https://github.com/zhlinh/ccgo/releases/download/v#{version}/ccgo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af4c67f2ab529f1789a43573fd11f0a2f96581849169a95a182917427cb5ac97" # linux-x86_64
    end
  end

  def install
    bin.install "ccgo"
  end
end
