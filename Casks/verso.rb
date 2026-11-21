cask "verso" do
  version "0.1.6"

  on_arm do
    sha256 "788bb80d234133097d42a1c1d1d859bf898747ae8a7fe4fca86b17bec6b1ed2b"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.6/Verso_0.1.6_aarch64.dmg"
  end
  on_intel do
    sha256 "e74ceac2c84f154b7939c75d0c99193cd7c35cb482a3927e8f85b0797278745a"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.6/Verso_0.1.6_x64.dmg"
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
