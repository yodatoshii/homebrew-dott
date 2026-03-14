class Dott < Formula
  desc "Private domain search. No middlemen."
  homepage "https://github.com/yodatoshii/dott"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/yodatoshii/dott/releases/download/v0.2.3/dott-aarch64-apple-darwin.tar.gz"
      sha256 "06f1730459e1169b4f8035b1899c58604f6f78fb55df4ac2ac22015f0f36dcf2"
    end
    on_intel do
      url "https://github.com/yodatoshii/dott/releases/download/v0.2.3/dott-x86_64-apple-darwin.tar.gz"
      sha256 "988b73cf23be0f42b1e5e37f632ed44cc2eaecf3cfbf1f04a133243b4e9efb23"
    end
  end

  on_linux do
    url "https://github.com/yodatoshii/dott/releases/download/v0.2.3/dott-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3c6c749ab1583ae03894cf5d23a7fdb4ff737e15ea0505fb11dd47a9277112c8"
  end

  def install
    bin.install "dott"
  end

  test do
    assert_match "dott", shell_output("#{bin}/dott --help")
  end
end
