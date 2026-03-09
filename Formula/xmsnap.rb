class Xmsnap < Formula
  desc "CLI tool that captures preview snapshots via Xcode's MCP server"
  homepage "https://github.com/trickart/XcodeMCPSnapshooter"
  url "https://github.com/trickart/XcodeMCPSnapshooter/releases/download/0.0.4/xmsnap.artifactbundle.zip"
  sha256 "80705d85b84e1e0ad2c39646b0cf84ac6c937910272f5936777648df8b36218d"
  license "MIT"

  def install
    bin.install "xmsnap-macos/bin/xmsnap" if OS.mac?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/xmsnap --license")
  end
end
