class Mantle < Formula
  desc "Infrastructure automation platform"
  homepage "https://getmantle.sh"
  version "${VERSION}"

  on_macos do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v${VERSION}/mantle-darwin-aarch64"
      sha256 "${SHA_DARWIN_ARM64}"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v${VERSION}/mantle-darwin-x86_64"
      sha256 "${SHA_DARWIN_X64}"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v${VERSION}/mantle-linux-aarch64"
      sha256 "${SHA_LINUX_ARM64}"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v${VERSION}/mantle-linux-x86_64"
      sha256 "${SHA_LINUX_X64}"
    end
  end

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    bin.install "mantle-#{os}-#{arch}" => "mantle"
  end
end
