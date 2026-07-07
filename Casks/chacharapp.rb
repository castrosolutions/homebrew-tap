cask "chacharapp" do
  version "1.3.0"
  sha256 "4606039d23b2a0e70d1a86dc5519f698539482a70176d25d2f52219f4b0a5374"

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
