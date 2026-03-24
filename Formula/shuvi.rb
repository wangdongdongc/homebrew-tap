class Shuvi < Formula
  desc "macOS CLI AI agent that executes bash commands via natural language"
  homepage "https://github.com/wangdongdongc/ShuviCmd"
  version "0.1.0"
  license "MIT"

  url "https://github.com/wangdongdongc/ShuviCmd/releases/download/v0.1.0/shuvi-v0.1.0-macos-universal.tar.gz"
  sha256 "f1f432e9e09bd2c86131f0fff8a847a8d31b2186c95c096b2ad74c3fd21796d1"

  depends_on :macos

  def install
    bin.install "shuvi"
  end

  test do
    assert_match "usage", shell_output("#{bin}/shuvi --help", 0).downcase
  end
end
