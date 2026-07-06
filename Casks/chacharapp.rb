cask "chacharapp" do
  version "1.2.2"
  sha256 "96bc5ddc3a9057df92771a1aaca338d10b07a3a639ad11cb2da0252f5c189779"

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
