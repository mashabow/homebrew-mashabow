class Unicode < Formula
  desc "Display unicode character properties"
  homepage "http://kassiopeia.juls.savba.sk/~garabik/software/unicode.html"
  url "https://github.com/garabik/unicode/archive/v1.zip"
  sha256 "f0f7818bbdfccd62e2d2d78ff31f34d8f9b2add068b413ecbe62c7a52a6bc2af"
  revision 1

  resource "UnicodeData" do
    url "http://www.unicode.org/Public/8.0.0/ucd/UnicodeData.txt"
    sha256 "38b17e1118206489a7e0ab5d29d7932212d38838df7d3ec025ecb58e8798ec20"
  end

  resource "Unihan" do
    url "http://www.unicode.org/Public/8.0.0/ucd/Unihan.zip"
    sha256 "e02affdd082ca9365f595e5dfa3295dc9e0bf7f6aed54455d99c0a9924b88115"
  end

  def install
    # use Python 3 to avoid "narrow" build problem
    inreplace "unicode", "#!/usr/bin/python", "#!/usr/bin/env python3"
    inreplace "unicode", "/usr/share", share
    bin.install "unicode", "paracode"
    man1.install "unicode.1", "paracode.1"
    (share/"unidata").install resource("UnicodeData"), resource("Unihan")
  end
end
