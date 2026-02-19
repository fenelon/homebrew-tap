cask "subline" do
  version "0.4.4"
  sha256 "065adff15d1ebc20d5ce58e8c4949f63341192d7cae3b3566293cdfc73eb62b4"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
