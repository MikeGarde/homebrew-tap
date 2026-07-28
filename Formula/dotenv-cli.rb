class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "2.0.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.2/dotenv-cli-2.0.2-apple-darwin-aarch64.gz"
      sha256 "2fc6204ade8aa3fd9dd4800202d603a6983412faf79975e2e17fd82b007675ea" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.2/dotenv-cli-2.0.2-apple-darwin-x86_64.gz"
      sha256 "dd458e800f17e3519b11f04cead9dbea6d7f43501f461accd8949175df12cc7d" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.2/dotenv-cli-2.0.2-unknown-linux-gnu-aarch64.gz"
      sha256 "146d55bc231a71da0ffb5603d1c617c5c6061f5b40a8e9e8edc73d4fa489d5b8" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.2/dotenv-cli-2.0.2-unknown-linux-gnu-x86_64.gz"
      sha256 "8eec169739f123a8d49cb2d12caaec748a44c09915589dc87596e6a91b7f5b52" # linux intel
    end
  end

  def install
    bin.install Dir["dotenv-cli-*"].first => "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
