cask "kuaitie" do
  version "3.7.0,1744623623"
  sha256 "7359f7735a47cd30b600f20aa7afa1aed1974bb4e97e241e025f7096c6705fae"

  url "https://clipweb.oss-cn-qingdao.aliyuncs.com/release/macos/packages/kuaitie-#{version.csv.first.no_dots}_#{version.csv.second}.zip",
      verified: "clipweb.oss-cn-qingdao.aliyuncs.com/release/macos/packages/"
  name "kuaitie"
  desc "Cross-platform cloud clipboard synchronisation tool"
  homepage "https://home.clipber.com/"

  livecheck do
    url "https://clipweb.oss-cn-qingdao.aliyuncs.com/release/macos/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "kuaitie.app"

  uninstall quit: "manager.clipboard.kuaitie"

  zap trash: [
    "~/Library/Caches/manager.clipboard.kuaitie",
    "~/Library/HTTPStorages/manager.clipboard.kuaitie",
    "~/Library/Preferences/manager.clipboard.kuaitie.plist",
    "~/Library/WebKit/manager.clipboard.kuaitie",
  ]
end
