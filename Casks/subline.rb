cask "subline" do
  version "0.4.10"
  sha256 "be906c644e956949f1cee20b0c310574117f2780a12868baa139a75186c43264"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
