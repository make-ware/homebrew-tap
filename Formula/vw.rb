class Vw < Formula
  desc "Command-line interface for video-ware"
  homepage "https://github.com/make-ware/video-ware"
  url "https://github.com/make-ware/video-ware/releases/download/video-ware-v0.9.8/vw-0.9.8.tar.gz"
  sha256 "592fb6c6f25f80522dad02a763abb4b9a051f6cdce62f2e4c8c9f13a3506ed2c"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    bin.install "vw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vw --version")
  end
end
