cask "glow" do
  version "0.1.0"
  sha256 :no_check

  url "https://github.com/nmwcode/glow/releases/download/v#{version}/Glow.app.zip"
  name "Glow"
  desc "Boost XDR/HDR display brightness via Metal overlay"
  homepage "https://github.com/nmwcode/glow"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Glow.app"

  zap trash: [
    "~/Library/Preferences/com.glow.plist",
    "~/Library/LaunchAgents/com.glow.plist",
  ]
end
