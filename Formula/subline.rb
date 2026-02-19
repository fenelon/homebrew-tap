class Subline < Formula
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-arm64.zip"
      sha256 "8445333ac5f97790ab7ad01ed03226482677066c1b3b3ae52161c618e87a623d"
    end

    on_intel do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-amd64.zip"
      sha256 "1fa2316dc4724be60e871565b953bfd293616c0fd754d3e24ded4f6a695489e1"
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
