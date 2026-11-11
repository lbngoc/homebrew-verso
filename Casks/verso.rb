cask "verso" do
  version "0.1.0"

  on_arm do
    sha256 "731f5e20fcc79c0c2a8706603b471fdf6889084ff61e51d0e3f90c27c3d7aa6b"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.0/Verso_0.1.0_aarch64.dmg"
  end
  on_intel do
    sha256 "864d064779cd539353d030696e7b8ca6ebd7c905fbd32514a6a7757fa37646e6"
    url "https://github.com/lbngoc/verso-translate/releases/download/v0.1.0/Verso_0.1.0_x64.dmg"
  end

  name "Verso"
  desc "Instant translation of selected or typed text"
  homepage "https://github.com/lbngoc/verso-translate"
  app "Verso.app"

  auto_updates true
  depends_on macos: ">= :ventura"
end
