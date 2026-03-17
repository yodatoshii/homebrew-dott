class Dott < Formula
  desc "Private domain search. No middlemen."
  homepage "https://github.com/yodatoshicom/dott"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/yodatoshicom/dott/releases/download/v0.3.0/dott-aarch64-apple-darwin.tar.gz"
      sha256 "76e97b153cfcb04a5587c0f9f35b8b54957edc8ca607b0e4f4cce59390af4b09"
    end
    on_intel do
      url "https://github.com/yodatoshicom/dott/releases/download/v0.3.0/dott-x86_64-apple-darwin.tar.gz"
      sha256 "c8893316847c7354c1cf1ab59118c55fd1801ed84573395a25f73f4faa8a1f7a"
    end
  end

  on_linux do
    url "https://github.com/yodatoshicom/dott/releases/download/v0.3.0/dott-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "033e781ec8659f0ea4677375d67fd6511e8a148e7c7644bd0f2daade909571ff"
  end

  def install
    bin.install "dott"
  end

  test do
    assert_match "dott", shell_output("#{bin}/dott --help")
  end
end
