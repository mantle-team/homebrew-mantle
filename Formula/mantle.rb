class Mantle < Formula
  desc "Infrastructure automation platform"
  homepage "https://getmantle.sh"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.0/mantle-darwin-aarch64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.0/mantle-darwin-x86_64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.0/mantle-linux-aarch64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.0/mantle-linux-x86_64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    bin.install "mantle-#{os}-#{arch}" => "mantle"
  end
end
