cask "subline" do
  version "0.3.3"
  sha256 "ad3bd3ad1e051c66e3d53061bd00cc4774762df0f025ab9bfe2923184dc62874"

  url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-macos-app.zip"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-go"

  app "Subline.app"
end
