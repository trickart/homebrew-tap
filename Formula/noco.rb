class Noco < Formula
  desc "Node.js-compatible JavaScript runtime"
  homepage "https://github.com/trickart/tpsim"
  url "https://github.com/trickart/NoCo/releases/download/0.0.7/noco.artifactbundle.zip"
  sha256 "c940acd927fb21494b440f8a38c4e57989c8ee23e8b3f5c4a41cc7dfab90b7b9"
  license "MIT"

  def install
    bin.install "noco-macos/bin/noco" if OS.mac?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/noco --license")
  end
end
