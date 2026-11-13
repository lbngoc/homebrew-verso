cask "verso" do
  version "0.1.2"

  on_arm do
    sha256 "491fef42a840c7300cf5a3c3ff86e4c270a62ed418e2c5bf12d1314368aedddc"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.2/Verso_0.1.2_aarch64.dmg"
  end
  on_intel do
    sha256 "0a5aba0d6b97ab2ffb33e98ec67761602464f5e8230e938fa457184821a9e840"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.2/Verso_0.1.2_x64.dmg"
  end

  name "Verso"
  desc "Instant translation of selected or typed text"
  homepage "https://github.com/lbngoc/verso-translate"
  app "Verso.app"

  auto_updates true
  depends_on macos: ">= :ventura"

  postflight do
    target = "#{appdir}/Verso.app"
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", target] if File.exist?(target)
  end
end
