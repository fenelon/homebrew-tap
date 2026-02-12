class Subline < Formula
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-go"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-darwin-arm64.tar.gz"
      sha256 "effa1ba9752d7fc4546634321d3e6d2390009983f945a31bd931e1086dbf6aed"
    end

    on_intel do
      url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-darwin-amd64.tar.gz"
      sha256 "d152a36b419756471186bb68ab1660baaadcd22d923fd6c3a11210640c801ec3"
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
