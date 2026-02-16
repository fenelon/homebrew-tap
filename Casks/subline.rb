cask "subline" do
  version "0.3.9"
  sha256 "189123e2afec2d4ca511be57682b235dfb4ab73265229d7ac16f7464ffd21cb4"

  url "https://github.com/fenelon/subline-releases/releases/download/#{version}/Subline.dmg"
  name "Subline"
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"

  app "Subline.app"
  binary "#{appdir}/Subline.app/Contents/Resources/subline"
end
