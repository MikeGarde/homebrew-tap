class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "1.2.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.2.1/dotenv-cli-1.2.1-apple-darwin-aarch64.gz"
      sha256 "c7a8fce1fcd6d17e00059ebd8c6fa6e57783cb97b21564344e6d06861e6250a1" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.2.1/dotenv-cli-1.2.1-apple-darwin-x86_64.gz"
      sha256 "642991c7662e3469b357f39f797a9b63fc1f67002210c195cbb6ac1efacf1094" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.2.1/dotenv-cli-1.2.1-unknown-linux-gnu-aarch64.gz"
      sha256 "f3ffefddf4103848823b7e39262cc12bd056b054b7535b40754953325ca7bb14" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.2.1/dotenv-cli-1.2.1-unknown-linux-gnu-x86_64.gz"
      sha256 "a80cb4e9f8bdffbb495cdd13e47bc86824f2a3addb5fe3262eac854d0a88aab5" # linux intel
    end
  end

  def install
    bin.install Dir["dotenv-cli-*"].first => "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
