cask "subline" do
  version "0.4.1"
  sha256 "89cd9344dc51cc05a9e8046e930abe8eda0732d58519dd0d1891b465d8f6f9f2"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
