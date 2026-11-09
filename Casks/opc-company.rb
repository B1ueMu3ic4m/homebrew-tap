cask "opc-company" do
  version "2.45.0"
  sha256 "b00fad94c325e022fdd42b355da9b79fee195640b2438d4afdc5ee236cc94163"

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
