cask "glow" do
  version "0.1.0"
  sha256 "a495a4111b307dc7bc9afde09a389181f3aab9a49f13d533f6ea9bc704e495fe"
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
