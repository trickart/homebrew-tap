class Noco < Formula
  desc "A Node.js-compatible JavaScript runtime"
  homepage "https://github.com/trickart/tpsim"
  url "https://github.com/aspect-apps/NoCo/releases/download/0.0.2/noco.artifactbundle.zip"
  sha256 "12333fbeae9eb22aa44b724e524f8b04a59571a7ef48aa65868389cb8c7bb9de"
  license "MIT"

  def install
    bin.install "noco-macos/bin/noco" if OS.mac?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/noco --license")
  end
end
