class Nakatoshi < Formula
  desc "Bitcoin vanity address generator"
  homepage "https://github.com/ndelvalle/nakatoshi"
  url "https://github.com/ndelvalle/nakatoshi/releases/download/v0.2.8/nakatoshi-macos-amd64.tar.gz"
  sha256 "c20bc79afdea5dc0b184b520f26adc6fdf790462bf1c80142969559fe7ced37d"
  version "0.2.8"

  def install
    bin.install "nakatoshi"
  end
end