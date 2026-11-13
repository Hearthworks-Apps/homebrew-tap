cask "spake" do
  version "1.0.4"
  sha256 "065f6c8fc7d7e43cf66b189a1e4a967d0deb87476929d1976722a7339971fe7d"

  url "https://spake.app/download/Spake-#{version}-arm64.zip"
  name "Spake"
  desc "Voice notes recorded with the screen, transcribed on-device"
  homepage "https://spake.app/"

  livecheck do
    url "https://spake.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Spake.app"

  uninstall quit: "app.spake.desktop"

  # Models, indexes, logs, caches and preferences only. User data survives a zap:
  # the notes folder (~/Documents/Spake by default) and Application Support/Spake's
  # Drafts, Recovery, Speakers (remembered voices) and Automations folders.
  zap trash: [
    "~/Library/Application Support/app.spake.desktop",
    "~/Library/Application Support/Spake/Diagnostics",
    "~/Library/Application Support/Spake/LibraryIndex",
    "~/Library/Application Support/Spake/Logs",
    "~/Library/Application Support/Spake/Models",
    "~/Library/Application Support/Spake/Translation",
    "~/Library/Caches/app.spake.desktop",
    "~/Library/HTTPStorages/app.spake.desktop",
    "~/Library/HTTPStorages/app.spake.desktop.binarycookies",
    "~/Library/Preferences/app.spake.desktop.plist",
    "~/Library/Saved Application State/app.spake.desktop.savedState",
    "~/Library/WebKit/app.spake.desktop",
  ]
end
