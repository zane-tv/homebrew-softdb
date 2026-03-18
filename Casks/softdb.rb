cask "softdb" do
  version "1.1.5"
  sha256 "60ac487121f26eb0652927ffdaf3b53e08b1dea2275a97705c65f2c58a0e017a"

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
