cask "verso" do
  version "0.1.4"

  on_arm do
    sha256 "a634663c202a93dff28cfd04580fc3fdeb25d04cfeec07cbca679a90c485e3af"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.4/Verso_0.1.4_aarch64.dmg"
  end
  on_intel do
    sha256 "4bace65080ad198a8e06dfcc658c59e4155210ba6e279858af227c31b3360de7"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.4/Verso_0.1.4_x64.dmg"
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
