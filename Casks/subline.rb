cask "subline" do
  version "0.4.6"
  sha256 "60e34f47ae6d5d40f3feed498ea44c1248a00336e05805532316f61cafbcc5f7"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
