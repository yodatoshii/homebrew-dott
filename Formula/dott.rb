class Dott < Formula
  desc "Private domain search. No middlemen."
  homepage "https://github.com/yodatoshicom/dott"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://github.com/yodatoshicom/dott/releases/download/v0.6.2/dott-aarch64-apple-darwin.tar.gz"
      sha256 "2a1a522ee3a66bb6fc7a78dd9de2d043cae08a7a911a98aa3cd8822c335a9762"
    end
    on_intel do
      url "https://github.com/yodatoshicom/dott/releases/download/v0.6.2/dott-x86_64-apple-darwin.tar.gz"
      sha256 "a9ef469cbf03915a3240f0d2f398582ff84bdea9924fcac47f04060f259ce072"
    end
  end

  on_linux do
    url "https://github.com/yodatoshicom/dott/releases/download/v0.6.2/dott-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3232a4e7839236163e0efe2792a4b9b223cb8d3ffb2857dfeddec33acf7986e8"
  end

  def install
    bin.install "dott"
  end

  test do
    assert_match "dott", shell_output("#{bin}/dott --help")
  end
end
