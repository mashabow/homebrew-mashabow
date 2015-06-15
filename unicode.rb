class Unicode < Formula
  desc "Display unicode character properties"
  homepage "http://kassiopeia.juls.savba.sk/~garabik/software/unicode.html"
  url "https://github.com/garabik/unicode/archive/v1.zip"
  version "1"
  sha256 "f0f7818bbdfccd62e2d2d78ff31f34d8f9b2add068b413ecbe62c7a52a6bc2af"

  resource "UnicodeData" do
    url "http://www.unicode.org/Public/7.0.0/ucd/UnicodeData.txt"
    sha256 "bfa3da58ea982199829e1107ac5a9a544b83100470a2d0cc28fb50ec234cb840"
  end

  resource "Unihan" do
    url "http://www.unicode.org/Public/7.0.0/ucd/Unihan.zip"
    sha256 "a012d564130da81dc789de4d58f6af5fb9a8f6cce31338418fb7726a79bc5e6c"
  end

  def install
    inreplace "unicode", "/usr/share", share
    bin.install "unicode", "paracode"
    man1.install "unicode.1", "paracode.1"
    (share/"unidata").install resource("UnicodeData"), resource("Unihan")
  end
end
