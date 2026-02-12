cask "subline" do
  version "0.3.0"
  sha256 "3be469cf65af48519a2b6cdfe834b746eae0b6bb97939ef9816aac62fb52f8e7"

  url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-macos-app.zip"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-go"

  app "Subline.app"
end
