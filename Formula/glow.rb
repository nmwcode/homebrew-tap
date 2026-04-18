class Glow < Formula
  desc "Boost XDR/HDR display brightness via Metal overlay"
  homepage "https://github.com/nmwcode/glow"
  # Updated automatically on each release by GitHub Actions
  url "https://github.com/nmwcode/glow/releases/download/v0.1.0/glow-macos-arm64.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
