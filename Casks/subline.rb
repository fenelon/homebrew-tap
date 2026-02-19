cask "subline" do
  version "0.4.3"
  sha256 "cc5353732dacf243bae649b98494f4aeaee36cea96f641acf0537ef6e96f3e35"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
