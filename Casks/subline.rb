cask "subline" do
  version "0.4.2"
  sha256 "33bf7687c79e581457a33a9cccb5dc4bc3ab792d0135ea4a40ed0aad782d3ac7"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
