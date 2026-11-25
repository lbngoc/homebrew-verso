cask "verso" do
  version "0.1.11"

  on_arm do
    sha256 "75279e211abd7fcecbce0f5e6bb8f0eaff2869dea00c8274a5b100101c8ca009"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.11/Verso_0.1.11_aarch64.dmg"
  end
  on_intel do
    sha256 "635e01b8f48046a07ce01896f99ce5f54e215f2fe9381a12642a2de9e743119f"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.11/Verso_0.1.11_x64.dmg"
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
