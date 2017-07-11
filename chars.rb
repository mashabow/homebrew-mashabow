class Chars < Formula
  desc "Command-line tool to display information about unicode characters"
  homepage "https://github.com/antifuchs/chars"
  head "https://github.com/antifuchs/chars.git"
  url "https://github.com/antifuchs/chars/archive/0.1.0.tar.gz"
  sha256 "f702145653da44ce32c7c5af5c1387a095d628e96f330fddbff8df641588729c"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/chars"
  end

  test do
    system bin/"chars", "--help"
  end
end
