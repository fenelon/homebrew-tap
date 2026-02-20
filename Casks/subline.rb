cask "subline" do
  version "0.4.7"
  sha256 "3b78fc7e5911c27aa3cf4f2cc9646129e2140ff58558d31dc406f54a779844c1"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
