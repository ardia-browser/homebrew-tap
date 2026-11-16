cask "ardia@nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/ardia-browser/ardia/releases/download/nightly/Ardia-Nightly.dmg"
  name "Ardia Nightly"
  desc "Web browser with Arc's sidebar and Dia's polish"
  homepage "https://ardia.dev/nightly"

  auto_updates true
  conflicts_with cask: "ardia"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Ardia.app"

  zap trash: [
    "~/Library/Application Support/Ardia",
    "~/Library/Application Support/com.ardia.browser",
    "~/Library/Caches/com.ardia.browser",
    "~/Library/HTTPStorages/com.ardia.browser",
    "~/Library/HTTPStorages/com.ardia.browser.binarycookies",
    "~/Library/Preferences/com.ardia.browser.plist",
    "~/Library/Saved Application State/com.ardia.browser.savedState",
  ]
end
