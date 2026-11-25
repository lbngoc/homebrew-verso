cask "verso" do
  version "0.1.9"

  on_arm do
    sha256 "371afa0d94af39d733960d63f5c0210304ba997705193e049577b8b78f7993af"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.9/Verso_0.1.9_aarch64.dmg"
  end
  on_intel do
    sha256 "88d04db9431b0f2969dda1c579f0926b2985e0be2094b8d350c53820bc8b2cfd"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.9/Verso_0.1.9_x64.dmg"
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
