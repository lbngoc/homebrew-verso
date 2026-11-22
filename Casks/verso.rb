cask "verso" do
  version "0.1.7"

  on_arm do
    sha256 "6652730bb429efe2dd085cf713d13a19478e67fad8b138bc7ec963a137d67801"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.7/Verso_0.1.7_aarch64.dmg"
  end
  on_intel do
    sha256 "a626255896f2aa3bb21a7e9f05fae23cc6bc5c8142e83e63d6d4c76422910f7d"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.7/Verso_0.1.7_x64.dmg"
  end

  name "Verso"
  desc "Instant translation of selected or typed text"
  homepage "https://github.com/lbngoc/verso-translate"
  app "Verso.app"

  auto_updates true
  depends_on macos: :ventura

  postflight do
    target = "#{appdir}/Verso.app"
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", target] if File.exist?(target)
  end
end
