class Pdfextractimages < Formula
  desc "Extract high-quality images from PDF files while preserving metadata"
  homepage "https://github.com/nealcaren/pdfextractimages"
  url "https://github.com/nealcaren/pdfextractimages/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b3bcba20ef8c9678260eeb8670cc6f08cc3577426adb608521b97b7b0b16b12d"
  license "MIT"

  depends_on "python@3"

  def install
    bin.install "pdfextractimages"
    libexec.install "pdfextractimages_core.py"

    # Rewrite the main executable to correctly reference the core script
    (bin/"pdfextractimages").write <<~EOS
      #!/bin/bash

      # Ensure uv is installed
      if ! command -v uv &> /dev/null; then
          echo "Error: 'uv' is not installed. Install it with 'pip install uv' or 'brew install uv'."
          exit 1
      fi

      # Run the script with uv, ensuring dependencies are installed temporarily
      uv run "#{libexec}/pdfextractimages_core.py" "$@"
    EOS

    chmod "+x", bin/"pdfextractimages"
  end

  def caveats
    <<~EOS
      ⚠️ 'uv' is required to run this tool but is not installed automatically.

      Install it manually with:
        brew install uv
      or
        pip install uv
    EOS
  end

  test do
    assert_match "Error: 'uv' is not installed", shell_output("#{bin}/pdfextractimages", 1)
  end
end
