cask "opc-company" do
  version "2.29.0"
  sha256 "63b83ab738097c4dac8be0fd16fc887395e3f2a5535f9f8fd9c3c4fab533a8ae"

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
