cask "subline" do
  version "0.3.2"
  sha256 "b933901f8e8e94a518c91163304af9a92556caa3a783ce32f872a96d6b9f44b4"

  url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-macos-app.zip"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-go"

  app "Subline.app"
end
