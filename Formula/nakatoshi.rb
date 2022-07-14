class Nakatoshi < Formula
  desc "Bitcoin vanity address generator"
  homepage "https://github.com/ndelvalle/nakatoshi"
  url "https://github.com/ndelvalle/nakatoshi/releases/download/v0.2.4/nakatoshi-macos-amd64.tar.gz"
  sha256 "f9d2733d4926daaa1096765c353f71b9132a45162d090778be480bd0724fb54b"
  version "0.2.4"

  def install
    bin.install "nakatoshi"
  end
end