class DotenvCli < Formula
  desc "Read and update dotenv files from the cli"
  homepage "https://github.com/MikeGarde/dotenv-cli"
  version "2.0.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.0/dotenv-cli-2.0.0-apple-darwin-aarch64.gz"
      sha256 "5e7ab935dde40013a40ed82454da7d1b9797293e6382902f70e8ddf1b8dd83ba" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.0/dotenv-cli-2.0.0-apple-darwin-x86_64.gz"
      sha256 "fc608132de8f9a680acf8534b87e04aef18d9646cbfde256bf824ee50d8c8642" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.0/dotenv-cli-2.0.0-unknown-linux-gnu-aarch64.gz"
      sha256 "7aa5870b102eb834680e507f2dd6443f99948ecbb606c6ac648dcb78a9ba9d01" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/dotenv-cli/releases/download/2.0.0/dotenv-cli-2.0.0-unknown-linux-gnu-x86_64.gz"
      sha256 "b4f123011f831384923a01ccde2b285ec331f55c36e25c98021ccc6ac3edc77a" # linux intel
    end
  end

  def install
    bin.install Dir["dotenv-cli-*"].first => "dotenv"
  end

  test do
    assert_match "dotenv", shell_output("#{bin}/dotenv --help")
  end
end
