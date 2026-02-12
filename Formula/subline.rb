class Subline < Formula
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-go"
  version "0.3.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-darwin-arm64.tar.gz"
      sha256 "3625d7a2bb580d89739b697a490a2bccaea81297b20d05f4d94217796d692915"
    end

    on_intel do
      url "https://github.com/fenelon/subline-go/releases/download/#{version}/subline-darwin-amd64.tar.gz"
      sha256 "704be9f93d4cbedc5158ec8f10805a47232642e1d6847e5ebc32a6e23456e2ad"
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
