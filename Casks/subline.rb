cask "subline" do
  version "0.3.6"
  sha256 "ce2c61a004b6f00e2adc51ffc4cedd47eafabae571855532a63a039c1ca06741"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline-#{version}.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
