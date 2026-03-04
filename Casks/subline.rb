cask "subline" do
  version "0.4.9"
  sha256 "12800e48d9b7e2eaed8948349e6319851a4c94326f99cdc7085fea6efd25e9ee"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
