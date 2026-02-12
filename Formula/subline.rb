class Subline < Formula
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-go"
  version "0.3.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-darwin-arm64.tar.gz"
      sha256 "353cdff9045ad8997b0ce4797789501e1a7b76cf2b7093f36790dd26a1e82219"
    end

    on_intel do
      url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-darwin-amd64.tar.gz"
      sha256 "d17698a0447191604cbff202ceff4ed9c521217d671daf147b1d88aa3ee61b32"
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
