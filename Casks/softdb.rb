cask "softdb" do
  version "1.1.4"
  sha256 "705e1fa6c016cc453dda7cf42da91c0ec807b9df262e26154bbcc9f26f3b59fc"

  url "https://github.com/zane-tv/soft-db/releases/download/v#{version}/SoftDB-darwin-arm64.dmg"
  name "SoftDB"
  desc "Modern database management tool for PostgreSQL, MySQL, SQLite, MongoDB"
  homepage "https://github.com/zane-tv/soft-db"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "SoftDB.app"

  zap trash: [
    "~/Library/Application Support/SoftDB",
    "~/Library/Preferences/dev.zane.softdb.plist",
    "~/Library/Caches/SoftDB",
  ]
end
