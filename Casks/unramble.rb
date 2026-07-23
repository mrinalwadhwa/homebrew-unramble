cask "unramble" do
  version "0.2.0"
  sha256 "3489b7121fb1f73df6ba10e3fc3bcae5484f534e3b9695d9ebb86393acb05984"

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
