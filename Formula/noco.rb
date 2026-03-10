class Noco < Formula
  desc "Node.js-compatible JavaScript runtime"
  homepage "https://github.com/trickart/tpsim"
  url "https://github.com/trickart/NoCo/releases/download/0.0.5/noco.artifactbundle.zip"
  sha256 "6bd162a47da43352e92d5e701864bd0fba7aa172e5e16ceee0e37fe9d6f5430a"
  license "MIT"

  def install
    bin.install "noco-macos/bin/noco" if OS.mac?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/noco --license")
  end
end
