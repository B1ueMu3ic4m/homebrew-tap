cask "opc-company" do
  version "2.6.0"
  sha256 "a0b3d24bbbfb2bf42a179493bb4514b230ecb4a706c02f99d4ee72171ef9e99b"

  url "https://github.com/B1ueMu3ic4m/OPCCompany/releases/download/v#{version}/OPCCompany-v#{version}.zip"
  name "OPC Company"
  desc "Run your AI coding agents as a 2D pixel company — you're the boss"
  homepage "https://github.com/B1ueMu3ic4m/OPCCompany"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OPCCompany.app"

  caveats <<~EOS
    Unsigned build. If macOS blocks the first launch, run:
      xattr -cr /Applications/OPCCompany.app
  EOS
end
