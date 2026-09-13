cask "opc-company" do
  version "0.2.1"
  sha256 "3a7fee5e1b3a796f495e31d0c1b997927d5f05cda2095cf34624ba0e84f5f69c"

  url "https://github.com/B1ueMu3ic4m/OPCCompany/releases/download/v#{version}/OPCCompany-v#{version}.zip"
  name "OPC Company"
  desc "Watch your AI coding agents run a 2D company"
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
