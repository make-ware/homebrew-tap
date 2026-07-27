class Vw < Formula
  desc "Command-line interface for video-ware"
  homepage "https://github.com/make-ware/video-ware"
  url "https://github.com/make-ware/video-ware/releases/download/video-ware-v1.0.2/vw-1.0.2.tar.gz"
  sha256 "0ee6394cb92c2c0a1a1acf25beb0fb0dd95a355ef72254605a8e5ca6fbdd6e65"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    bin.install "vw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vw --version")
  end
end
