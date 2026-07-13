class Vw < Formula
  desc "Command-line interface for video-ware"
  homepage "https://github.com/make-ware/video-ware"
  url "https://github.com/make-ware/video-ware/releases/download/video-ware-v0.9.1/vw-0.9.1.tar.gz"
  sha256 "b9a2a264341d824a589a46a2069d32501796f9d9b9f4136f169d5ac392271eab"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    bin.install "vw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vw --version")
  end
end
