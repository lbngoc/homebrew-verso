cask "verso" do
  version "0.1.10"

  on_arm do
    sha256 "2fddee39700cd0f26a303ffec0a99b81a1b3aae1ca762287d7e1845c91176c82"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.10/Verso_0.1.10_aarch64.dmg"
  end
  on_intel do
    sha256 "abb12405029e96d4b2fef11955512f78f4e993aad0597130cc30488878954d38"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.10/Verso_0.1.10_x64.dmg"
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
