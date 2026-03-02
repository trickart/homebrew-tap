class Noco < Formula
  desc "Node.js-compatible JavaScript runtime"
  homepage "https://github.com/trickart/tpsim"
  url "https://github.com/trickart/NoCo/releases/download/0.0.4/noco.artifactbundle.zip"
  sha256 "8c5735de10a9afeffbf1572318145f23f6cc2812474b2cefb4d91452150bd4ac"
  license "MIT"

  def install
    bin.install "noco-macos/bin/noco" if OS.mac?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/noco --license")
  end
end
