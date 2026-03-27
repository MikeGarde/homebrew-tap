class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  license "GPL-3.0-only"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.6.0/commitbot-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "381f46dcf56f851d93ce1bc341df6318eda0bc406a14d4eaf96cb2de43a5c3f3" # arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.6.0/commitbot-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "d004b07fbf4692d3ea776d61db83c49c9284fa0e76a4c8edf82756bf85c35367" # intel
    end
  end

  def install
    bin.install "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
