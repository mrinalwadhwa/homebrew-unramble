cask "unramble" do
  version "0.3.0"
  sha256 "32a0d031261e68bbd8e1b6c5671802d00cabfc29b0002d8b4e4cd21db7c41ca4"

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
