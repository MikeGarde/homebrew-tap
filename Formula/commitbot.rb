class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  license "GPL-3.0-only"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.5.2/commitbot-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "1fc737fab61bb3a0b772ddd9015d7e0ad49907c72163d5922dddeb54e7f2d6e0" # arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.5.2/commitbot-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "3fed625e28262229a18307d5f78761c77c70a43eb7519666181642d7db44837b" # intel
    end
  end

  def install
    bin.install "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
