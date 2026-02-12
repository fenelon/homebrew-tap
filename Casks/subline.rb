cask "subline" do
  version "0.3.1"
  sha256 "1cd63b1bd11fdd77708fa51b5ca1a56ea47ab47881c9d33e9da0562c86e64cd8"

  url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-macos-app.zip"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-go"

  app "Subline.app"
end
