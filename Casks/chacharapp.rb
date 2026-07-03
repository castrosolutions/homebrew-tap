cask "chacharapp" do
  version "1.1.5"
  sha256 "1ce7cc1213956b4c25dbe6b9e0fd67b6bba32214587dc2fc3191063f6c1575da"

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
