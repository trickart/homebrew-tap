class Xmsnap < Formula
  desc "CLI tool that captures preview snapshots via Xcode's MCP server"
  homepage "https://github.com/trickart/XcodeMCPSnapshooter"
  url "https://github.com/trickart/XcodeMCPSnapshooter/releases/download/0.0.3/xmsnap.artifactbundle.zip"
  sha256 "0f55e39a00e0692da02583dacf98215ad9156ece8fd9aa018d5cde21623284aa"
  license "MIT"

  def install
    bin.install "xmsnap-macos/bin/xmsnap" if OS.mac?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/xmsnap --license")
  end
end
