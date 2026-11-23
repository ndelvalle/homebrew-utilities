class Nakatoshi < Formula
  desc "Bitcoin vanity address generator"
  homepage "https://github.com/ndelvalle/nakatoshi"
  version "0.3.1"

  if Hardware::CPU.arm?
    url "https://github.com/ndelvalle/nakatoshi/releases/download/v0.3.1/nakatoshi-macos-arm64.tar.gz"
    sha256 "90620d98a4e4a99c3e9b445e35cf56f1b88e7a7d3672687635a1140418fa9b1e"
  else
    url "https://github.com/ndelvalle/nakatoshi/releases/download/v0.3.1/nakatoshi-macos-amd64.tar.gz"
    sha256 "9c6ad4a02eb9d1d6ff513f9481877970ad7ddc5d22d66bd5c10bafd4c8b69d1a"
  end

  def install
    bin.install "nakatoshi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nakatoshi --version")
  end
end
