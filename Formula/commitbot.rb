class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  license "GPL-3.0-only"
  version "0.4.0"
  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.4.0/commitbot-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "da837cede85e482c6068b860f8c813e9c1e1c969d32782d95ca53a90c1644990" # arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.4.0/commitbot-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "7db773d6d40c2d5e01b3ee52c2c8f2801197f068ff625f1f0d38f3a713b4a210" # intel
    end
  end

  def install
    bin.install "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
