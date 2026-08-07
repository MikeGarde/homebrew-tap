class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "2.0.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.3/dotenv-cli-2.0.3-apple-darwin-aarch64.gz"
      sha256 "f5620084215ee61a7b6069dc448754dce0175010274afb3bc44009446e22e801" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.3/dotenv-cli-2.0.3-apple-darwin-x86_64.gz"
      sha256 "7ce3015619ee9bf435d190ebb7fc8e8325641f39ef6a7266cb168fcfb2e69311" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.3/dotenv-cli-2.0.3-unknown-linux-gnu-aarch64.gz"
      sha256 "2c9846e4d7e43b4ac040fb944d490f982961728f0e1e9de55821054264ffc0c5" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.3/dotenv-cli-2.0.3-unknown-linux-gnu-x86_64.gz"
      sha256 "9b2076314c8dea397b717f20c376247971dbc22394b80cbc2dfd7d7bcb9a5f44" # linux intel
    end
  end

  def install
    bin.install Dir["dotenv-cli-*"].first => "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
