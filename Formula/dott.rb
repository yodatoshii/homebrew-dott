class Dott < Formula
  desc "Private domain search. No middlemen."
  homepage "https://github.com/yodatoshii/dott"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/yodatoshii/dott/releases/download/v0.2.4/dott-aarch64-apple-darwin.tar.gz"
      sha256 "e7bb102985ed6cf199c54d7ff211d6ab048c5d30710228e6616adbd91875bb99"
    end
    on_intel do
      url "https://github.com/yodatoshii/dott/releases/download/v0.2.4/dott-x86_64-apple-darwin.tar.gz"
      sha256 "d78ee1357fdb3cac816434701d2ad3c593769e47e5854c33805bc32fe8f2da03"
    end
  end

  on_linux do
    url "https://github.com/yodatoshii/dott/releases/download/v0.2.4/dott-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "85c699ba067cd5364a17e33202427e0e9ae68ebf6c000730d49fc2cd17a80f73"
  end

  def install
    bin.install "dott"
  end

  test do
    assert_match "dott", shell_output("#{bin}/dott --help")
  end
end
