class Dott < Formula
  desc "Private domain search. No middlemen."
  homepage "https://github.com/yodatoshii/dott"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/yodatoshii/dott/releases/download/v0.1.0/dott-aarch64-apple-darwin.tar.gz"
      sha256 "f0088360fdb3d7427630228eba5bc50804da199b351e7bbb0bb88aa0eab5fea2"
    end
    on_intel do
      url "https://github.com/yodatoshii/dott/releases/download/v0.1.0/dott-x86_64-apple-darwin.tar.gz"
      sha256 "4e30b5fcb8c4dc49a6c5d20f8c663f22e625025ce6a2e15e445fb9963ec848f1"
    end
  end

  on_linux do
    url "https://github.com/yodatoshii/dott/releases/download/v0.1.0/dott-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d6b91eb84f30ba833d8f2771b7aabbf6c83d273c006f9ff3e7795c55994468d9"
  end

  def install
    bin.install "dott"
  end

  test do
    assert_match "dott", shell_output("#{bin}/dott --help")
  end
end
