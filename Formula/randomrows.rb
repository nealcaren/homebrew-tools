class Randomrows < Formula
  desc "Display the header and random rows from a CSV or text file"
  homepage "https://github.com/nealcaren/homebrew-tools"
  url "https://github.com/nealcaren/homebrew-tools/archive/refs/tags/v1.0.tar.gz"
  sha256 "a4602d5a7957af6da47dbc777a860a2af49c6d38e8433d255a58cdbdf125bd8b"
  version "1.0"

  def install
    bin.install "bin/randomrows"
  end
end
