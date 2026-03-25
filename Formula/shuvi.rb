class Shuvi < Formula
  desc "macOS CLI AI agent that executes bash commands via natural language"
  homepage "https://github.com/wangdongdongc/ShuviCmd"
  version "0.1.1"
  license "MIT"

  url "https://github.com/wangdongdongc/ShuviCmd/releases/download/v0.1.1/shuvi-v0.1.1-macos-universal.tar.gz"
  sha256 "2932dfdb07935e3cdee981c6cc9dab65eba1beca59d5ef1d5f971416647a2dc7"

  depends_on :macos

  def install
    bin.install "shuvi"
  end

  test do
    assert_match "usage", shell_output("#{bin}/shuvi --help", 0).downcase
  end
end
