class Vw < Formula
  desc "Command-line interface for video-ware"
  homepage "https://github.com/make-ware/video-ware"
  url "https://github.com/make-ware/video-ware/releases/download/video-ware-v0.9.6/vw-0.9.6.tar.gz"
  sha256 "b46e6a551f2dd185840adb19aa577cf5e7700b3ab2c178b750e0d1eecd7562c5"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    bin.install "vw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vw --version")
  end
end
