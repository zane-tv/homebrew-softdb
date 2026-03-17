cask "softdb" do
  version "1.1.3"
  sha256 "350f1dad1a75074b8b691c180b5bd4b069f99e041b1d735f722b09d46f90ecb3"

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
