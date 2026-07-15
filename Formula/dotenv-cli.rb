class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "1.2.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.2.0/dotenv-cli-1.2.0-apple-darwin-aarch64.gz"
      sha256 "1426a29074b59f992999d3363fa3a37e490c2208b5da7864da109c47908788c5" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.2.0/dotenv-cli-1.2.0-apple-darwin-x86_64.gz"
      sha256 "bc40b6f111e4d87b72ec63b78656b5cd4d43eb4f4a427264fd47ab5e179c95c1" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.2.0/dotenv-cli-1.2.0-unknown-linux-gnu-aarch64.gz"
      sha256 "8db6c6946dd5f9eb73b513e6ce5c0ab3ae38f17f6d17af4c6dd36d0cedb8c4bb" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.2.0/dotenv-cli-1.2.0-unknown-linux-gnu-x86_64.gz"
      sha256 "38cb2a1a5e715de778d102c8f95f29e9aac4d301f143de6afe1addfcd2cd605e" # linux intel
    end
  end

  def install
    bin.install Dir["dotenv-cli-*"].first => "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
