cask "flashspace" do
  version "0.6.8"
  sha256 "b91306f3a589b1fe56aa7314af89aeb8c056ac3c1e600b3a26ed16f7da6a73e1"

  url "https://github.com/wojciech-kulik/FlashSpace/releases/download/v#{version}/FlashSpace.app.zip"
  name "FlashSpace"
  desc "Virtual workspace manager"
  homepage "https://github.com/wojciech-kulik/FlashSpace"

  depends_on macos: ">= :sonoma"

  app "FlashSpace.app"

  uninstall quit: "pl.wojciechkulik.FlashSpace"

  zap trash: "~/Library/Preferences/pl.wojciechkulik.FlashSpace.plist"
end
