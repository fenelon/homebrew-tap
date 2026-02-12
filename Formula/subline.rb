class Subline < Formula
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"
  version "0.3.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-arm64.zip"
      sha256 "6936a03e2b1e0ca62778b0f8556db1baf3f88878663dbce7c77845aeac6fd388"
    end

    on_intel do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-amd64.zip"
      sha256 "fb3013e4026114f803ab409570faedd43d42bda12273902f1a55bc27180d5e55"
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
