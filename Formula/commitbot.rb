class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  license "GPL-3.0-only"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.2.1/commitbot-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "b9d8b0978de4eb477445ea436ddb1d339283e53babb1b79f0393c119afe0f690" # arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.2.1/commitbot-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "09331e77c4d84441f77b7154f30c5496cbf2bc41cd8d4a4b7fe217d9c224c9f4" # intel
    end
  end

  def install
    bin.install "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
