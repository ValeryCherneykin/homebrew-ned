class Ned < Formula
  desc "Open any remote file in your local editor over SSH or Docker"
  homepage "https://github.com/ValeryCherneykin/ned"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ValeryCherneykin/ned/releases/download/v0.1.0/ned_0.1.0_darwin_arm64.tar.gz"
      sha256 "0038fb4cfc9d5387093106e59180b190c77b10e26a4c62f7425d25895d449041"
    end
    on_intel do
      url "https://github.com/ValeryCherneykin/ned/releases/download/v0.1.0/ned_0.1.0_darwin_amd64.tar.gz"
      sha256 "b894397c1e7a3ffce290b9dace54be5aa30c200a655cbd83040fa4a8be005357"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ValeryCherneykin/ned/releases/download/v0.1.0/ned_0.1.0_linux_arm64.tar.gz"
      sha256 "08fc9cd9963ae9a3a12beef4ef17932a787085a168d27276291816de397b9173"
    end
    on_intel do
      url "https://github.com/ValeryCherneykin/ned/releases/download/v0.1.0/ned_0.1.0_linux_amd64.tar.gz"
      sha256 "2b0ca28d1ebfbbd52eb697311220142f331ad5188cb9c076c536dcdae4886ac8"
    end
  end

  def install
    bin.install "ned"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ned --version")
  end
end
