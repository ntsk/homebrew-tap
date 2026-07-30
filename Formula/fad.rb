class Fad < Formula
  desc "Upload, download, and install APK/AAB releases on Firebase App Distribution"
  homepage "https://github.com/ntsk/fad"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.3/fad-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "921e78f4c1e77c045bfa88a0ac7d665d42382c5d825758cd75f366417840a30d"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.3/fad-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "4aceeedeb6a8b0d92ed8ccb214c1696c115e24b4fb0408c339a642b3d1c8aaf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.3/fad-v0.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ccdafcb5532d69632dba19f55321452b47dc40f0b652b10ca8923cb3eadb6e24"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.3/fad-v0.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a6f13fd6439024314c51a496cc38e2a0b7c278bf680d1fab17c86159766b0e3"
    end
  end

  def install
    bin.install "fad"
  end

  test do
    assert_match "fad #{version}", shell_output("#{bin}/fad --version")
  end
end
