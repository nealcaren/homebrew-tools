class Randomrows < Formula
  desc "Display the header and random rows from a CSV or text file"
  homepage "https://github.com/nealcaren/homebrew-tools"
  url "https://github.com/nealcaren/homebrew-tools/archive/refs/tags/v1.2.tar.gz"
  sha256 "5e8cc9f19391289aa26c59e12ec319075842cdd5f5f065218d8602e7f612d244"
  version "1.2.0"

  def install
    bin.install "bin/randomrows"
  end
end
