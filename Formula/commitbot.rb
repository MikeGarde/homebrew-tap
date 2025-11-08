class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  license "GPL-3.0-only"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.1.0/commitbot-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "1f32d2f676c3d629ffb214363353dffb7893f8938a54ad5938b160dc52e02c45" # arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.1.0/commitbot-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "daf2cac3d060df1c74e7b90ec8f056d8a7c883a3e061f98cdc289032f3a5f853" # intel
    end
  end

  def install
    bin.install "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
