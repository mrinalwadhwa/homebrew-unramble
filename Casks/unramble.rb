cask "unramble" do
  version "0.4.0"
  sha256 "72a1b826e50ae8056a8e32cf3e78fd0561e8f81cd82631865aecd7554ca4198d"

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
