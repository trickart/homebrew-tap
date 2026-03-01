class Noco < Formula
  desc "Node.js-compatible JavaScript runtime"
  homepage "https://github.com/trickart/tpsim"
  url "https://github.com/trickart/NoCo/releases/download/0.0.3/noco.artifactbundle.zip"
  sha256 "e4f9965eee7f7b9ea2868cecd9dc4ab2f1320a550e17635643e475b8eaff3f08"
  license "MIT"

  def install
    bin.install "noco-macos/bin/noco" if OS.mac?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/noco --license")
  end
end
