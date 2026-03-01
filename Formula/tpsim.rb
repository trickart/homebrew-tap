class Tpsim < Formula
  desc "ESC/POS thermal printer simulator"
  homepage "https://github.com/trickart/tpsim"
  url "https://github.com/trickart/tpsim/releases/download/0.0.2/tpsim.artifactbundle.zip"
  sha256 "e124a8504f330bf2f49aa970c01d700035a6868bd016fa05dbc46958c5da2a91"
  license "MIT"

  def install
    bin.install "tpsim-macos/bin/tpsim" if OS.mac?
    bin.install "tpsim-linux/bin/tpsim" if OS.linux?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/tpsim --license")
  end
end
