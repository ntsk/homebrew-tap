class Fad < Formula
  desc "Upload, download, and install APK/AAB releases on Firebase App Distribution"
  homepage "https://github.com/ntsk/fad"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.2/fad-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "e195e1c9589d23e9dace69e83587c712a572780ee0f856c9ead12bc522c0e2b6"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.2/fad-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "0735a5ab4af66f90bfbe145a206f3f14c347ee2cf13706e620285b9be57b4bd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.2/fad-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75d47477ff777a3ff369f01daea0211083b0c551f6d45beb3b10ef749d665092"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.2/fad-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab9c14d7048dfaa55af830ae008c7de310e5f5f481881aa149c90dd02fb96adc"
    end
  end

  def install
    bin.install "fad"
  end

  test do
    assert_match "fad #{version}", shell_output("#{bin}/fad --version")
  end
end
