class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "1.1.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.0/dotenv-cli-1.1.0-apple-darwin-aarch64.tar.gz"
      sha256 "d42a5eda873556f7666b69482ca49abed517605032e4ed36fde65ef876f868cc" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.0/dotenv-cli-1.1.0-apple-darwin-x86_64.tar.gz"
      sha256 "62fc2276c96e1f8517dcb96bf2dc6bb5cf1adf14bd071d59932f5bfadee15368" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.0/dotenv-cli-1.1.0-unknown-linux-gnu-aarch64.tar.gz"
      sha256 "bf5cff158a01f5ca3d806503bdf2489a166b1502a462c3c0e7042cfd35a4c57c" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.0/dotenv-cli-1.1.0-unknown-linux-gnu-x86_64.tar.gz"
      sha256 "a69aa81dd6b4a57ab32565813492e2126faa4dc36e7bb4eff6728cb45d029a7b" # linux intel
    end
  end

  def install
    bin.install "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
