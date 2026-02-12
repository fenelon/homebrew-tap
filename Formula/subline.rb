class Subline < Formula
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-go"
  version "0.3.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-darwin-arm64.zip"
      sha256 "13e6ea335f45d681fb9025799109a70a10f83c138487de14e94231fceacd68d9"
    end

    on_intel do
      url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-darwin-amd64.zip"
      sha256 "bfe02908dd05b8ec4a8e305c28793b687dec6d049999e6b3ef9099f27d031d5b"
    end
  end

  def install
    libexec.install "subline"
    libexec.install Dir["libonnxruntime*"]
    bin.install_symlink libexec/"subline"
  end

  test do
    assert_match "SUBLINE", shell_output("#{bin}/subline 2>&1", 1)
  end
end
