cask "glow" do
  version "0.1.0"
  sha256 "11e2e06a43f79ab50b368170b8dec2320d82035bd7e1e4eb4c0d5705441f0ed7"
  url "https://github.com/nmwcode/glow/releases/download/v0.1.0/Glow.app.zip"
  name "Glow"
  desc "Boost XDR/HDR display brightness via Metal overlay"
  homepage "https://github.com/nmwcode/glow"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Glow.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Glow.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.glow.plist",
    "~/Library/LaunchAgents/com.glow.plist",
  ]
end
