class Subline < Formula
  desc "Generate subtitles from video and audio files using Whisper AI"
  homepage "https://github.com/fenelon/subline-go"
  version "0.2.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-darwin-arm64.tar.gz"
      sha256 "486f0cd2ad1aa72a0ddc1e431c6f65a569afb668794b2d22e625964f1c07ffcf"
    end

    on_intel do
      url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-darwin-amd64.tar.gz"
      sha256 "66a9c002727271a9443bf9fdbe16a61daefdbc5c07e89b1fccc453ec8fc6f969"
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
