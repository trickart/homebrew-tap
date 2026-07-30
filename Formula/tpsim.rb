class Tpsim < Formula
  desc "ESC/POS thermal printer simulator"
  homepage "https://github.com/trickart/tpsim"
  url "https://github.com/trickart/tpsim/releases/download/0.1.0/tpsim.artifactbundle.zip"
  sha256 "210ad69757f9a71cbb2c2f33236f65314cd77f997a191ff3f1fd98951238c42a"
  license "MIT"

  def install
    bin.install "tpsim-macos/bin/tpsim" if OS.mac?
    bin.install "tpsim-linux/bin/tpsim" if OS.linux?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/tpsim --license")
  end
end
