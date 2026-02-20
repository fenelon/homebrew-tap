class Subline < Formula
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"
  version "0.4.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-arm64.zip"
      sha256 "e9ac4eecea3f45c5d01ee6f9118bdf5bc7878f17d915aec39b3830d1a07196aa"
    end

    on_intel do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-amd64.zip"
      sha256 "a59954958dbd593382b56bed9f447c8900e82d73ac1011cc35da91cf1c767c24"
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
