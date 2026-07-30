class Vw < Formula
  desc "Command-line interface for video-ware"
  homepage "https://github.com/make-ware/video-ware"
  url "https://github.com/make-ware/video-ware/releases/download/video-ware-v1.0.4/vw-1.0.4.tar.gz"
  sha256 "841b756b757fe595e844e55aca97b8e5a8b44cf7a437b940f9aa0fdc24f8f8b9"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    bin.install "vw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vw --version")
  end
end
