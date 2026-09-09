class Fad < Formula
  desc "Upload, download, and install APK/AAB releases on Firebase App Distribution"
  homepage "https://github.com/ntsk/fad"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.4/fad-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "ae4ddeba039fced4678971a82779efa5c615cbcc1bd28f312144123ca461955c"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.4/fad-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "2a2ec7393aa9921b3d655d96d84c4ecbf42b43a46e2a90eed0f1c2ab13152ca0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.4/fad-v0.1.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "16f17a00183e5f55dc071cc81b7e34d74d80465c418d9de1ce623f9f812e6307"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.4/fad-v0.1.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e093bd28b50e2212a18a82274781cd5884c1ac75fc372137fb8015f0faf480e1"
    end
  end

  def install
    bin.install "fad"
  end

  test do
    assert_match "fad #{version}", shell_output("#{bin}/fad --version")
  end
end
