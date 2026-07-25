cask "vpngate-mac" do
  version "0.0.1-rc2"
  sha256 "2946a13bfd2f66ebb236a61ac51b890bd8d3d08b1031f3ee37a4e9a99e93a701"

  url "https://github.com/davegallant/vpngate-mac/releases/download/v#{version}/VPNGate.zip"
  name "VPNGate"
  desc "Menu bar client for vpngate.net"
  homepage "https://github.com/davegallant/vpngate-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "VPNGate.app"

  postflight do
    system_command "/usr/bin/xattr",
                    args: ["-dr", "com.apple.quarantine", "#{appdir}/VPNGate.app"],
                    sudo: false
  end

  zap trash: [
    "~/Library/Preferences/com.davegallant.Vpngate.plist",
  ]

  caveats <<~EOS
    VPNGate.app is signed with a free Apple Development certificate, not a
    paid Developer ID, so it is not notarized. The quarantine flag is removed
    automatically after install so Gatekeeper won't block the first launch.

    The first time you open the app, it registers a privileged background
    helper (com.davegallant.vpngate.helper) to run OpenVPN -- approve it
    under System Settings > General > Login Items & Extensions. `brew
    uninstall --zap` removes the app and its preferences, but not the
    installed helper daemon; remove it manually with:
      sudo launchctl bootout system/com.davegallant.vpngate.helper
  EOS
end
