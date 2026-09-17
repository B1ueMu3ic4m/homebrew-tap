cask "opc-company" do
  version "0.3.2"
  sha256 "6048ee31ba577382db60979ae55ebcaa0bf304e53bbc8da282788946dadb5baf"

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
