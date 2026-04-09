class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  license "GPL-3.0-only"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.6.2/commitbot-0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "0ea77546e9e23fd4484be26febfaa3ccbb40a317ed348feda6c37f48c606d18c" # arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.6.2/commitbot-0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "3d7fc6da9dc48b47a52c2e9311c443cbdbd8b8b33c4909355c2453d8ffeb24e6" # intel
    end
  end

  def install
    bin.install "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
