cask "subline" do
  version "0.4.8"
  sha256 "d1409df49fa8a08d246bc2434221f783aceae2d7d48de7800ea005e26f01278c"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
