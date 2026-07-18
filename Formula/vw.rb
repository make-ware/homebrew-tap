class Vw < Formula
  desc "Command-line interface for video-ware"
  homepage "https://github.com/make-ware/video-ware"
  url "https://github.com/make-ware/video-ware/releases/download/video-ware-v0.9.9/vw-0.9.9.tar.gz"
  sha256 "5ba93b6a0173d131dcdd89ef159eab98f68cbeb79ffc595ec2d2e622129efc19"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    bin.install "vw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vw --version")
  end
end
