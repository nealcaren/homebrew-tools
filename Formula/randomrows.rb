class Randomrows < Formula
  desc "Display the header and random rows from a CSV or text file"
  homepage "https://github.com/nealcaren/randomrows"
  url "https://github.com/nealcaren/randomrows/archive/refs/tags/v1.3.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  version "1.3"
  head "https://github.com/nealcaren/randomrows.git", branch: "main"

  def install
    bin.install "bin/randomrows"
  end

  test do
    system "#{bin}/randomrows", "--help"
  end
end