class Vw < Formula
  desc "Command-line interface for video-ware"
  homepage "https://github.com/make-ware/video-ware"
  url "https://github.com/make-ware/video-ware/releases/download/video-ware-v0.10.8/vw-0.10.8.tar.gz"
  sha256 "6153665809bfba3fa40a2d68c3a037369c0dddcb6b70b0ac2ec7606788e396d1"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    bin.install "vw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vw --version")
  end
end
