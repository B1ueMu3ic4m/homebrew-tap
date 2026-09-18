cask "opc-company" do
  version "0.3.3"
  sha256  "8b0f0f3c6af8fc54add53d5e6e71e9a5cc22bca4cd6cca06b7058d6ba7aa7d35"

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