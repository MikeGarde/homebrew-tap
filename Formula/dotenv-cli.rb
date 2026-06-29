class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "0.0.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/0.0.0/commitbot-0.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "00000000000000000000000" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/0.0.0/commitbot-0.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "00000000000000000000000" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/0.0.0/commitbot-0.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00000000000000000000000" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/0.0.0/commitbot-0.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "00000000000000000000000" # linux intel
    end
  end

  def install
    bin.install "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
