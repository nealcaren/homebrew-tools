class Randomrows < Formula
  desc "Display the header and random rows from a CSV or text file"
  homepage "https://github.com/nealcaren/homebrew-tools"
  url "https://github.com/nealcaren/homebrew-tools/archive/refs/tags/v1.1.tar.gz"
  sha256 "01f8518ce2492b86ebdd20530c5d99c8afad8506e24392d6aced8062c22bc0ca"
  version "1.0"

  def install
    bin.install "bin/randomrows"
  end
end
