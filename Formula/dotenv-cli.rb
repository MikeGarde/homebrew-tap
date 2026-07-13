class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "1.1.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.2/dotenv-cli-1.1.2-apple-darwin-aarch64.gz"
      sha256 "6e72fca2839639e61837f25075cc7e613918196ad789324a182742562b08150f" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.2/dotenv-cli-1.1.2-apple-darwin-x86_64.gz"
      sha256 "df2234ad2800c6fe71a4191a48b91ea57908d9f195fc3905fcd87c1b6827c42e" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.2/dotenv-cli-1.1.2-unknown-linux-gnu-aarch64.gz"
      sha256 "b53eded8675deaa06c93bb8db54a6f4ff58c3d030a0c16d747604067da913fae" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.1.2/dotenv-cli-1.1.2-unknown-linux-gnu-x86_64.gz"
      sha256 "54b6cb0ef7f93fd2bbe0de390f76a5b624b7b835317c592c13f74728d2ebcf79" # linux intel
    end
  end

  def install
    bin.install Dir["dotenv-cli-*"].first => "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
