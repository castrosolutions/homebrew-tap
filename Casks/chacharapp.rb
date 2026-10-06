cask "chacharapp" do
  version "1.7.0"
  sha256 "56cf41921cd5ef3e4dd447e5e0af1fe936202f4766ee3f4181294155cc8ff6bb"

  url "https://dl.juanpablocastro.com/releases/#{version}/ChacharApp-#{version}.dmg",
      verified: "dl.juanpablocastro.com/"
  name "ChacharApp"
  desc "Local, free, private voice dictation tuned for Spanish-English code-switching"
  homepage "https://github.com/castrosolutions/ChacharApp"

  livecheck do
    url "https://github.com/castrosolutions/ChacharApp"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "ChacharApp.app"

  zap trash: [
    "~/Library/Application Support/ChacharApp",
    "~/Library/Caches/com.juanpablocastro.chacharapp",
    "~/Library/Preferences/com.juanpablocastro.chacharapp.plist",
    "~/Library/Saved Application State/com.juanpablocastro.chacharapp.savedState",
  ]
end
