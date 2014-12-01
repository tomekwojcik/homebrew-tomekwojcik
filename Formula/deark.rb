require "formula"

# Homebrew formula for Deark.

class Deark < Formula
  homepage "http://entropymine.com/deark/"
  url "http://entropymine.com/deark/releases/deark-1.1.0.tar.gz"
  sha1 "45b39faf6d802f6fb971b28019e6a7243bb8f898"

  def install
    system "make"
    bin.install "deark"
    prefix.install "COPYING"
    prefix.install "readme.txt"
    doc.install "formats.txt"
  end

  test do
    system "#{bin}/deark"
  end
end
