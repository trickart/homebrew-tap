class Tpsim < Formula
  desc "ESC/POS thermal printer simulator"
  homepage "https://github.com/trickart/tpsim"
  url "https://github.com/trickart/tpsim/releases/download/0.0.1/tpsim.artifactbundle.zip"
  sha256 "d7c08ceab03a7a2167c795362ede761cb6468e8df2c4afc0726990eed5a386c3"
  license "MIT"

  def install
    bin.install "tpsim-macos/bin/tpsim" if OS.mac?
    bin.install "tpsim-linux/bin/tpsim" if OS.linux?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/tpsim --license")
  end
end
