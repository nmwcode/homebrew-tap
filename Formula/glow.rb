class Glow < Formula
  desc "Boost XDR/HDR display brightness via Metal overlay"
  homepage "https://github.com/nmwcode/glow"
  url "https://github.com/nmwcode/glow/releases/download/v0.1.0/glow-macos-arm64.tar.gz"
  sha256 "6e31c1927321d765a2d6012937298eb60dd8d3071f43a2620bcbde3ff35939d0"
  version "0.1.0"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  def install
    bin.install "glow"
  end

  test do
    output = shell_output("#{bin}/glow 2>&1", 1)
    assert_match(/EDR|XDR/, output)
  end
end
