class Nakatoshi < Formula
  desc "Bitcoin vanity address generator"
  homepage "https://github.com/ndelvalle/nakatoshi"
  version "0.3.0"

  if Hardware::CPU.arm?
    url "https://github.com/ndelvalle/nakatoshi/releases/download/v0.3.0/nakatoshi-macos-arm64.tar.gz"
    sha256 "95e94b22cfe5ba5858b7156ce09fdf23e3d3fa313d1110c8f652c82aa2366c4b"
  else
    url "https://github.com/ndelvalle/nakatoshi/releases/download/v0.3.0/nakatoshi-macos-amd64.tar.gz"
    sha256 "adcf14dd5db0d0a86f225eef47a9e5956ba5aa08cf29bbeb398fcadaf61fe4eb"
  end

  def install
    bin.install "nakatoshi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nakatoshi --version")
  end
end
