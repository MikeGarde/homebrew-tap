class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "1.1.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.1/dotenv-cli-1.1.1-apple-darwin-aarch64.tar.gz"
      sha256 "db2e04b696ce3134fdfc0c9ede7704b227cb6aeb94ddbc53a1b439900ea5bc57" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.1/dotenv-cli-1.1.1-apple-darwin-x86_64.tar.gz"
      sha256 "1c1a2d40c768c80dc35113627cb278da3c909b1501361c26d1cb0eae29f01444" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.1/dotenv-cli-1.1.1-unknown-linux-gnu-aarch64.tar.gz"
      sha256 "ed0ed14b1b270d9bf740725daa73c4892088907e31ecc7247c35077f8cbcc388" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.1/dotenv-cli-1.1.1-unknown-linux-gnu-x86_64.tar.gz"
      sha256 "cd14b86593fda886e78a57d04fb12ba48308e64309caa5c43215cd5a99cd16d6" # linux intel
    end
  end

  def install
    bin.install "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
