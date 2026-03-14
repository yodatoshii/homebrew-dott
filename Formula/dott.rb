class Dott < Formula
  desc "Private domain search. No middlemen."
  homepage "https://github.com/yodatoshii/dott"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/yodatoshii/dott/releases/download/v0.2.2/dott-aarch64-apple-darwin.tar.gz"
      sha256 "066dce8545be043210dbe4a36258754fbf8c4e7ef41a1871046ac487d2ff26f1"
    end
    on_intel do
      url "https://github.com/yodatoshii/dott/releases/download/v0.2.2/dott-x86_64-apple-darwin.tar.gz"
      sha256 "dcabc60922649594a486814cec93a5c60c28423062973cd7770d21528d74db04"
    end
  end

  on_linux do
    url "https://github.com/yodatoshii/dott/releases/download/v0.2.2/dott-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cff9e1a0139b48fdda1a50169035365af8a64d15600de56f9e595897f0d7e1f9"
  end

  def install
    bin.install "dott"
  end

  test do
    assert_match "dott", shell_output("#{bin}/dott --help")
  end
end
