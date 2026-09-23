class Commitbot < Formula
  desc "Generate better git commit and PR messages using AI"
  homepage "https://github.com/MikeGarde/commitbot"
  version "0.7.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.7.1/commitbot-0.7.1-apple-darwin-aarch64.gz"
      sha256 "e572e0ff58b1b1846a895aeec594b2ffba60b1ac5240b7aeb39ad726837f51b7" # mac arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.7.1/commitbot-0.7.1-apple-darwin-x86_64.gz"
      sha256 "305f95d910b9b0a9f89da76be418d962734a86fd04f0ed4e28075d08e7dd9658" # mac intel
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.7.1/commitbot-0.7.1-unknown-linux-gnu-aarch64.gz"
      sha256 "f4232771ec1ca40df814e3d51762f452d224ed30b846fcd9070983ad6d347faa" # linux arm64
    end

    on_intel do
      url "https://github.com/MikeGarde/commitbot/releases/download/0.7.1/commitbot-0.7.1-unknown-linux-gnu-x86_64.gz"
      sha256 "23c4032d1eab0cc0878d1b303efe8cf55db39c7eb31e338014cd338a36e84e20" # linux intel
    end
  end

  def install
    bin.install Dir["commitbot-*"].first => "commitbot"
  end

  test do
    assert_match "commitbot", shell_output("#{bin}/commitbot --help")
  end
end
