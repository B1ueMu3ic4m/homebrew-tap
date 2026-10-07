cask "opc-company" do
  version "2.17.0"
  sha256 "404462f0b4408607cecaa1e2c6f929bb9d8c7e44a490d4b07c0f798e1d10e479"

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
