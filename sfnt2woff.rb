class Sfnt2woff < Formula
  desc "Convert OpenType to WOFF, and vice versa"
  homepage "https://people.mozilla.org/~jkew/woff/"
  url "https://people.mozilla.org/~jkew/woff/woff-code-latest.zip"
  version "20091004"
  sha256 "7713630d2f43320a1d92e2dbb014ca3201caab1dd4c0ab92816016824c680d96"

  def install
    system "make"
    bin.install "sfnt2woff", "woff2sfnt"
  end
end
