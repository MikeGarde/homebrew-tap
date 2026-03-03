class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  license "GPL-3.0-only"
  version "0.5.1"
  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.5.1/commitbot-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "70d7e13b1941b56a47f553cc2337cede2c17e889c672566a682c07f63c2cb6ce" # arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.5.1/commitbot-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "67bb00667d98c4183ee7c4e06307a1b0e3ba3b15ddf0b6b698e216c36073a1fa" # intel
    end
  end

  def install
    bin.install "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
