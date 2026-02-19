class Subline < Formula
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"
  version "0.4.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-arm64.zip"
      sha256 "3b512668484ca054276659a56480184bd6f7f7178d627ddf6837d4c0720a3aa8"
    end

    on_intel do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-amd64.zip"
      sha256 "1a830791b9ea1754cbf952d218eec61b2f9e9e8e43d48f2f42ec1f50fc52ba90"
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
