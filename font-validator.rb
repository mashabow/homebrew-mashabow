class FontValidator < Formula
  desc "Tool for testing fonts prior to release (Hin-Tak's fork)"
  homepage "https://github.com/HinTak/Font-Validator"
  url "https://downloads.sourceforge.net/project/hp-pxl-jetready/Microsoft%20Font%20Validator/FontVal-2.1.1-osx-10.7-x64.tgz"
  version "2.1.1"
  sha256 "bae9a3bbfa26bca20e439bd5f5fc5a97b834bdb7a094fc9f6220577779fd8927"

  def install
    bin.install "FontVal-2.1.1-osx-10.7-x64/FontValidator"
  end

  def caveats
    "This formula only installs the command-line tool, not the GUI."
  end

  test do
    system "FontValidator", "-version"
  end
end
