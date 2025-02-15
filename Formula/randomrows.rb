class Randomrows < Formula
  desc "Display the header and random rows from a CSV or text file"
  homepage "https://github.com/nealcaren/randomrows"
  url "https://github.com/nealcaren/randomrows/archive/refs/tags/v1.3.tar.gz"
  sha256 "928ac1996c1074fe2894a792c7fe892f17ce1e293f974cf952e9c2e70df33ebf"
  version "1.3"
  head "https://github.com/nealcaren/randomrows.git", branch: "main"

  def install
    bin.install "bin/randomrows"
  end

  test do
    system "#{bin}/randomrows", "--help"
  end
end