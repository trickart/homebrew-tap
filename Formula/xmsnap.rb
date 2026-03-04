class Xmsnap < Formula
  desc "CLI tool that captures preview snapshots via Xcode's MCP server"
  homepage "https://github.com/trickart/XcodeMCPSnapshooter"
  url "https://github.com/trickart/XcodeMCPSnapshooter/releases/download/0.0.2/xmsnap.artifactbundle.zip"
  sha256 "1ac90751f819fa825db1812874c951a08f8d28e6e7946778ebf938123293b61c"
  license "MIT"

  def install
    bin.install "xmsnap-macos/bin/xmsnap" if OS.mac?
  end

  test do
    assert_match "MIT License", shell_output("#{bin}/xmsnap --license")
  end
end
