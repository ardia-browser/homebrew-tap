cask "ardia@nightly" do
  version "0.2.47-nightly.8"
  sha256 "d6d232665cdcff85f57bf6eb9a99866fef4b6ac3ddcb85de682ba4c0dac65dd3"

  url "https://github.com/ardia-browser/ardia/releases/download/v#{version}/Ardia-#{version}.dmg"
  name "Ardia Nightly"
  desc "Web browser with Arc's sidebar and Dia's polish"
  homepage "https://ardia.dev/nightly"

  livecheck do
    url "https://github.com/ardia-browser/ardia.git"
    regex(/^v?(\d+(?:\.\d+)+-nightly\.\d+)$/i)
  end

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
