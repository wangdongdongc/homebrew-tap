class Shuvi < Formula
  desc "macOS CLI AI agent that executes bash commands via natural language"
  homepage "https://github.com/wangdongdongc/ShuviCmd"
  version "0.1.0"
  license "MIT"

  url "https://github.com/wangdongdongc/ShuviCmd/releases/download/v#{version}/shuvi-v#{version}-macos-universal.tar.gz"
  sha256 "PLACEHOLDER_SHA256"

  depends_on :macos

  def install
    bin.install "shuvi"
  end

  test do
    assert_match "usage", shell_output("#{bin}/shuvi --help", 0).downcase
  end
end
