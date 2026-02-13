cask "subline" do
  version "0.3.7"
  sha256 "e05579024c5802e9013202ee9cbec7afddfb922b2711233b083c1b6f376c32da"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline-#{version}.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
