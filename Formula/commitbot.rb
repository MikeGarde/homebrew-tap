class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  license "GPL-3.0-only"
  version "0.5.0"
  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.5.0/commitbot-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "54a18d18b52b47ab1e384fd95623d461dc6635bb4e3d159b513c9fb9d7d8c4bc" # arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.5.0/commitbot-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "a84bcdfbbec86d3bf8a546219bacaa940db079b29eb7125a559ae321350fc9b8" # intel
    end
  end

  def install
    bin.install "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
