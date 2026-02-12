cask "subline" do
  version "0.3.4"
  sha256 "335b097a2d91ddd6500e79e65ab4018ba7292f099a5625ecf2e7900600d2ede4"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-macos-app.zip"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
end
