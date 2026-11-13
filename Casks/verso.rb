cask "verso" do
  version "0.1.3"

  on_arm do
    sha256 "b4163d8cdc8a9f1a0fa7d7a4e15b77a45d394ba2e836335ef71397fed2cba09d"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.3/Verso_0.1.3_aarch64.dmg"
  end
  on_intel do
    sha256 "1375a2c23d1dfc347b65c99197767649819269bbd9c1e0f9ca6d54ed83aad9eb"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.3/Verso_0.1.3_x64.dmg"
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
