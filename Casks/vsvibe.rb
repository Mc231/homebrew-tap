cask "vsvibe" do
  version "0.3.1"
  sha256 "246526021d4a70fffaebe06fa0a4d3166a7fdb466b2a85a435790daf4f9ae94f"

  url "https://github.com/Mc231/vsvibe/releases/download/v#{version}/VSVibe-#{version}.dmg"
  name "VSVibe"
  desc "Run and monitor multiple Claude Code and terminal sessions"
  homepage "https://vshyrochuk.com/vsvibe/"

  livecheck do
    url "https://mc231.github.io/vsvibe/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "VSVibe.app"

  zap trash: [
    "~/Library/Application Support/VSVibe",
    "~/Library/Caches/com.shyrochuk.vsvibe",
    "~/Library/HTTPStorages/com.shyrochuk.vsvibe",
    "~/Library/Preferences/com.shyrochuk.vsvibe.plist",
    "~/Library/Saved Application State/com.shyrochuk.vsvibe.savedState",
  ]
end
