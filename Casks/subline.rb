cask "subline" do
  version "0.3.5"
  sha256 "9a8b231478d509a317993e7ac48fb51c6fec1928493bc7007cfc2198dd183ad5"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-macos-app.zip"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
