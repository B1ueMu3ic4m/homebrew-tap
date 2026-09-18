cask "opc-company" do
  version "0.5.0"
  sha256 "564dce436112c1cb7dc7344435513e05820e0fa645333c2b1cfcba1525ea8adf"

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