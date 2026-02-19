cask "subline" do
  version "0.4.0"
  sha256 "0a3f6e2081fd06c443b27a88788ebe0bc3da0c8c49cecf71c7d25fcf08e55aa6"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
