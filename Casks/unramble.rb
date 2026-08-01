cask "unramble" do
  version "0.3.1"
  sha256 "7e09c429ab09f7755224df82670ec9273b88ecced680a4ee9f56647898df710a"

  url "https://github.com/mrinalwadhwa/unramble/releases/download/v#{version}/Unramble.dmg"
  name "Unramble"
  desc "Press a hotkey, dictate naturally, polished text appears in any app."
  homepage "https://github.com/mrinalwadhwa/unramble"

  depends_on macos: ">= :sonoma"

  app "Unramble.app"

  zap trash: [
    "~/Library/Preferences/computer.unramble.plist",
    "~/Library/Caches/computer.unramble",
    "~/Library/Application Support/Unramble",
  ]
end
