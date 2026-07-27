class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "2.0.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.1/dotenv-cli-2.0.1-apple-darwin-aarch64.gz"
      sha256 "3028eb7a38a83d4f1fa56767568842700a5749eecdd8fa81f9f3775da71971d8" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.1/dotenv-cli-2.0.1-apple-darwin-x86_64.gz"
      sha256 "02ee6b9a611d6bf7ef82ddc7129dbbacecc181d594d4f5dc3ff6c83b5bea0d0c" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.1/dotenv-cli-2.0.1-unknown-linux-gnu-aarch64.gz"
      sha256 "290ac8d0f6347ddc1d6ebbeb9f40ac3063b50a786c5e656db1d096f1f8e67319" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.1/dotenv-cli-2.0.1-unknown-linux-gnu-x86_64.gz"
      sha256 "efb9cafceb4efadabc1d1995f9db1db8f8642c582d9a5dab40d7e157bbdb30d4" # linux intel
    end
  end

  def install
    bin.install Dir["dotenv-cli-*"].first => "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
