cask "glow" do
  version "0.1.0"
  sha256 "b5aa9cd239701dfaa885c70a9614dca7464e5e5b05e3fdf13857d0fe1764ed47"
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
