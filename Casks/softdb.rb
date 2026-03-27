cask "softdb" do
  version "1.2.0"
  sha256 "2e88e969d79e414b2a69c86328278c71d5a16c089c77633f9c4bfd6d1afbfcfc"

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
