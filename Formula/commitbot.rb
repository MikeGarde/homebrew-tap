class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  license "GPL-3.0-only"
  version "0.3.0"
  depends_on "git"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.3.0/commitbot-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "dda3fc4f07dc48b7790c50411f77739d8007aa31ec30e17c4317435e90d763bf" # arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.3.0/commitbot-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "dff134886f991d4171af7cbdbe63607e6b8b10df452a82ad747415128c423a0d" # intel
    end
  end

  def install
    bin.install "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
