class Subline < Formula
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"
  version "0.4.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-arm64.zip"
      sha256 "f52aacc50296a9a4201e091d9aa25f8bb74cc99839fd4c3c06fdd59ed841fd9d"
    end

    on_intel do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-amd64.zip"
      sha256 "55de23b09f7ad48209a5283efd82d5d331e49e18e2a0482448ba54c4777d4197"
    end
  end

  def install
    libexec.install "subline"
    libexec.install Dir["libonnxruntime*"]
    # Re-sign binary and dylibs with adhoc so Team IDs match.
    # Homebrew re-signs dylibs on extraction, stripping the Developer ID,
    # which causes a Team ID mismatch that prevents loading.
    system "codesign", "--sign", "-", "--force", libexec/"subline"
    Dir[libexec/"libonnxruntime*.dylib"].each do |f|
      system "codesign", "--sign", "-", "--force", f unless File.symlink?(f)
    end
    bin.install_symlink libexec/"subline"
  end

  test do
    assert_match "SUBLINE", shell_output("#{bin}/subline 2>&1", 1)
  end
end
