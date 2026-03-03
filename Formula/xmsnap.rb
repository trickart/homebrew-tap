class Xmsnap < Formula
  desc "CLI tool that captures preview snapshots via Xcode's MCP server"
  homepage "https://github.com/trickart/XcodeMCPSnapshooter"
  url "https://github.com/trickart/XcodeMCPSnapshooter/releases/download/0.0.1/xmsnap.artifactbundle.zip"
  sha256 "3abeb9cadc76c715cfc2747b418b1d82eea85c13304edd941a6fa254638cef5b"
  license "MIT"

  def install
    bin.install "xmsnap-macos/bin/xmsnap" if OS.mac?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/xmsnap --license")
  end
end
