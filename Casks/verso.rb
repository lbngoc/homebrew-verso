cask "verso" do
  version "0.1.1"

  on_arm do
    sha256 "6ffc5d1ed832f28d0db47dd72aa565c6ed4ea39901de9731b192f089159a15ab"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.1/Verso_0.1.1_aarch64.dmg"
  end
  on_intel do
    sha256 "24625daf39dcf579359e88b68c9b1c0b20689a4c66a0fd5ad1062e08406650f8"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.1/Verso_0.1.1_x64.dmg"
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
