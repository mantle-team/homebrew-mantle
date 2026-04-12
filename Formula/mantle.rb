class Mantle < Formula
  desc "Infrastructure automation platform"
  homepage "https://getmantle.sh"
  version "0.0.11"

  on_macos do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.11/mantle-darwin-aarch64"
      sha256 "1ad8ff281de18abbf7f0b7a271346cd85e16a40811878656c223cab8fecc00a1"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.11/mantle-darwin-x86_64"
      sha256 "961763d1756c28050e4b10b942527097a2117a83dad4c0771070df4f8e40428f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.11/mantle-linux-aarch64"
      sha256 "fe79d574ed711a4fc9db9fc970ae329359f0348a206111b2f0681fb9fe60b9d5"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.11/mantle-linux-x86_64"
      sha256 "8f0819da08372d17f223332b8de4ec9d7d607f779c5f8081e0f1c58139111c64"
    end
  end

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    bin.install "mantle-#{os}-#{arch}" => "mantle"
  end
end
