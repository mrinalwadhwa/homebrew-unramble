cask "unramble" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
