class Mantle < Formula
  desc "Infrastructure automation platform"
  homepage "https://getmantle.sh"
  version "0.0.13"

  on_macos do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.13/mantle-darwin-aarch64"
      sha256 "6c26e805bd4f8a403d77833f13bfee117023e118cdbccd974a61bb54f0224055"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.13/mantle-darwin-x86_64"
      sha256 "63a74ade21c6428df00ec51e9394da46b448af12b7ac37b73f9baafe73fa53d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.13/mantle-linux-aarch64"
      sha256 "9012af45fda7dbca1e4ba6b97d3107a2a88554807694d2c9fa7501a825de1901"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.13/mantle-linux-x86_64"
      sha256 "bdc42671b8f9a3f740892f7127afaee4c4bd5d0909b730cb372a38d0c8ffc605"
    end
  end

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    bin.install "mantle-#{os}-#{arch}" => "mantle"
  end
end
