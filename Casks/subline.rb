cask "subline" do
  version "0.4.5"
  sha256 "d495f77a8f562f73689185ec398763ebf1fb67ace6ebec419ba0f5e9e2be77b0"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
