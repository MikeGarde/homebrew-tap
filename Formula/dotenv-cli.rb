class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "1.0.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.0.0/dotenv-cli-1.0.0-apple-darwin-aarch64.tar.gz"
      sha256 "2b5cb8e37debd7e157d1b35c4b28dcff3711fa7d5d07cd8912a4787a7c9405de" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.0.0/dotenv-cli-1.0.0-apple-darwin-x86_64.tar.gz"
      sha256 "e24f5638a295023d7fb201e01337e87a82e527c163690a8db8d5db60c55a352e" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.0.0/dotenv-cli-1.0.0-unknown-linux-gnu-aarch64.tar.gz"
      sha256 "43a0f108b15fe42328a2050e9988c2e74b2ac7a86a49f9fb695162f95c4cd661" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/1.0.0/dotenv-cli-1.0.0-unknown-linux-gnu-x86_64.tar.gz"
      sha256 "f50e4f1a04396e157207fd2379b49d07e568a6d73b2b2452c21eb15cf8239352" # linux intel
    end
  end

  def install
    bin.install "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
