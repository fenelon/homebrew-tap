class Subline < Formula
  desc "AI subtitles and transcripts made easy"
  homepage "https://github.com/fenelon/subline-releases"
  version "0.3.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-arm64.zip"
      sha256 "1eb3931b42d7541fbd560ee377edf259ca16019e4194931f269399fca2ecaeb0"
    end

    on_intel do
      url "https://github.com/fenelon/subline-releases/releases/download/#{version}/subline-darwin-amd64.zip"
      sha256 "ab6f61d5bd6d4ff15dcbe0d36ddae48c8d09360ee53707d29fdc86c1be78d9cd"
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
