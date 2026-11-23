cask "verso" do
  version "0.1.8"

  on_arm do
    sha256 "0657bea162b08b841a1a12fec54ab2c472ec45957f63abce1a4065610847a09a"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.8/Verso_0.1.8_aarch64.dmg"
  end
  on_intel do
    sha256 "c43dd288b3b8041fb7a36effcea5b34960e9d976407b5951ae02a9f354f90c0c"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.8/Verso_0.1.8_x64.dmg"
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
