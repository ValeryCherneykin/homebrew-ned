# This file is automatically updated by GoReleaser on each release.
# Do not edit manually.
class Ned < Formula
  desc "Open any remote file in your local editor over SSH or Docker"
  homepage "https://github.com/ValeryCherneykin/ned"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ValeryCherneykin/ned/releases/download/v0.1.0/ned_0.1.0_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_GORELEASER_WILL_REPLACE_THIS"
    end
    on_intel do
      url "https://github.com/ValeryCherneykin/ned/releases/download/v0.1.0/ned_0.1.0_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_GORELEASER_WILL_REPLACE_THIS"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ValeryCherneykin/ned/releases/download/v0.1.0/ned_0.1.0_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_GORELEASER_WILL_REPLACE_THIS"
    end
    on_intel do
      url "https://github.com/ValeryCherneykin/ned/releases/download/v0.1.0/ned_0.1.0_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_GORELEASER_WILL_REPLACE_THIS"
    end
  end

  def install
    bin.install "ned"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ned --version")
  end
end
