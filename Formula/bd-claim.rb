class BdClaim < Formula
  desc "Atomic issue claim CLI for multi-agent local swarms using Beads"
  homepage "https://github.com/ccheney/bd-claim"
  license "MIT"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ccheney/bd-claim/releases/download/v1.0.3/bd-claim_darwin_arm64.tar.gz"
      sha256 "321e0f78097b8bc46a0847980b7769c858972bf6161b4118a52fd758981c45cd"
    else
      url "https://github.com/ccheney/bd-claim/releases/download/v1.0.3/bd-claim_darwin_amd64.tar.gz"
      sha256 "8b2149a39d54cbe4195e2829c0f174e60c8ed57fc86f35c10697d4d4e019659d"
    end
  end

  def install
    bin.install "bd-claim"
  end

  test do
    system "#{bin}/bd-claim", "--version"
  end
end
