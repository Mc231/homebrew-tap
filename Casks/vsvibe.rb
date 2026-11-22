cask "vsvibe" do
  version "0.3.2"
  sha256 "8aec36701aa43023744b64f12bdbee7ecc9395fa71b357efa4bca9e385585210"

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
