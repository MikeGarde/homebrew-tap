class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  version "0.6.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.6.4/commitbot-0.6.4-aarch64-apple-darwin.tar.gz"
      sha256 "0094d15b9e5f8536cd8bfb229b1f8ce1d18140c25d5e91c4ffc260dca7f9076f" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.6.4/commitbot-0.6.4-x86_64-apple-darwin.tar.gz"
      sha256 "bdd1ce9e3f626b4b4d3727bf2edd6d3927b46644de64816c3eaa19d0e361688f" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.6.4/commitbot-0.6.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a382b85f857cfa08608b5443ebc91098c02431e49db51436e29b43cdde8d656" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.6.4/commitbot-0.6.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7090652ba06e69e8af420222f7248095e5b37992ca5a81e24fc0400a086a6506" # linux intel
    end
  end

  def install
    bin.install "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
