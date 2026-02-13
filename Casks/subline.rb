cask "subline" do
  version "0.3.8"
  sha256 "7227f44bf7119ce9488fd12019064d7fa9c7c7d044cba949a3dab739aeba277c"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
