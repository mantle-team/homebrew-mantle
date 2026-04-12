class Mantle < Formula
  desc "Infrastructure automation platform"
  homepage "https://getmantle.sh"
  version "0.0.12"

  on_macos do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.12/mantle-darwin-aarch64"
      sha256 "39208ede569630fb96a70dda353232ff823f7b214b63de88b88caa4e5aade255"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.12/mantle-darwin-x86_64"
      sha256 "a1c66798a35f3ce0cfd37deda5a3ea46cb5a4dee9db729dc224d6ebbf6417241"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.12/mantle-linux-aarch64"
      sha256 "fb688c584fe42bb85b72c46a9b0c43ee36d44e4ca7d5f5981d9573401d6bbff0"
    end
    on_intel do
      url "https://github.com/mantle-team/mantle/releases/download/v0.0.12/mantle-linux-x86_64"
      sha256 "0d48d539d34dc17131981da52832d228b46384ef9164f743688e8d8b103f6c2c"
    end
  end

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    bin.install "mantle-#{os}-#{arch}" => "mantle"
  end
end
