cask "ardia@nightly" do
  version "0.2.44-nightly.6"
  sha256 "066bee499357a4fb1260826411aa5763ec25f8f6c57c92b7115189b1e608a9bc"

  url "https://github.com/mantrakp04/ardia/releases/download/v#{version}/Ardia-#{version}.dmg"
  name "Ardia Nightly"
  desc "Web browser with Arc's sidebar and Dia's polish"
  homepage "https://ardia.dev/nightly"

  livecheck do
    url "https://github.com/mantrakp04/ardia.git"
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
