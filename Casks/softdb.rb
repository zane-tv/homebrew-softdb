cask "softdb" do
  version "1.4.0"
  sha256 "56648d332fb67fa2f9c6b59f23057c9765adc29c562b05d495de3d3327607b50"

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
