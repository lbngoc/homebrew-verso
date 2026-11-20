cask "verso" do
  version "0.1.5"

  on_arm do
    sha256 "a75f140f6856a88cd57071c185c6ee42e8bf3d5408d730596bd67f36b7435b4f"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.5/Verso_0.1.5_aarch64.dmg"
  end
  on_intel do
    sha256 "d378339e54e5dd69b78bdcd391df0582d651fa9800de556ff3b448bb9029ddb8"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.5/Verso_0.1.5_x64.dmg"
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
