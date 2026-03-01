class Noco < Formula
  desc "A Node.js-compatible JavaScript runtime"
  homepage "https://github.com/trickart/tpsim"
  url "https://github.com/trickart/NoCo/releases/download/0.0.1/noco.artifactbundle.zip"
  sha256 "00ac1ca13fb4ad4ae3d0c348455bd0eea35cb762b272e171168a02f22b95a851"
  license "MIT"

  def install
    bin.install "noco/bin/noco" if OS.mac?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/noco --license")
  end
end
