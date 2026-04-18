class Mantle < Formula
  desc "Infrastructure automation platform"
  homepage "https://getmantle.sh"
  version "0.0.14"

  on_macos do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.14/mantle-darwin-aarch64"
      sha256 "950321360d01004aa5fbd5ac0d10aeffae7c69e18f327580dff0e25e9eb7c6a7"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.14/mantle-darwin-x86_64"
      sha256 "d3a1de7d41a033d5a364c5079b54a710d5ed1e44600dd8472f3f0ac636e63231"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.14/mantle-linux-aarch64"
      sha256 "eeb675fb5c4778bda68a6c3eae30da742197a63495f91f5cccafcc5d00001c17"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.14/mantle-linux-x86_64"
      sha256 "e1b920c4f2fb550d6220adccf2978b7e852630d54e167a0813aa32756e1a4f06"
    end
  end

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    bin.install "mantle-#{os}-#{arch}" => "mantle"
  end
end
