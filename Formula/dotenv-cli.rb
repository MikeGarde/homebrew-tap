class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "1.0.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.0.1/dotenv-cli-1.0.1-apple-darwin-aarch64.tar.gz"
      sha256 "dbc5f51055db4b0b8fe2bacbca041193ee1938c5935512aaabf00bfff5d76e22" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.0.1/dotenv-cli-1.0.1-apple-darwin-x86_64.tar.gz"
      sha256 "a24c3c2a277315116d454b74fdbdd603fb73451be95dee8fe55810399c77915b" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.0.1/dotenv-cli-1.0.1-unknown-linux-gnu-aarch64.tar.gz"
      sha256 "caee52adcad70511fde4fcaf227c73238e72f34742a906334f6c08aeb63f8c47" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.0.1/dotenv-cli-1.0.1-unknown-linux-gnu-x86_64.tar.gz"
      sha256 "6b564ae4238da5ba51a80a6c8693f23f6f738cbbc2f0d0d05bc41f6aa14220b1" # linux intel
    end
  end

  def install
    bin.install "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
