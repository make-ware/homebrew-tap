class Vw < Formula
  desc "Command-line interface for video-ware"
  homepage "https://github.com/make-ware/video-ware"
  url "https://github.com/make-ware/video-ware/releases/download/video-ware-v0.10.2/vw-0.10.2.tar.gz"
  sha256 "a0a7bd06aa0bcaeaf4334d3478d05c5ddc8a5b0d9b509511b3b2d85810ea0b79"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    bin.install "vw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vw --version")
  end
end
