class Fad < Formula
  desc "Upload, download, and install APK/AAB releases on Firebase App Distribution"
  homepage "https://github.com/ntsk/fad"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.0/fad-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e55d04b9b1fbbd4a6b9ab44081107036c963b7f92ab48ead9a3d4c97579d6334"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.0/fad-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "1c0e67744ce662f939f78a3d69ba1fd00140edfb17f3297364b51ff85769f6c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.0/fad-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "419e86dbf41b2b640645229f405a711d6cd277ae95685afbfec4f9f87a4678e0"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.0/fad-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23d8a8ff819eaadecfc11f58b5eb9f425cace0e1a022096002750679333ee29e"
    end
  end

  def install
    bin.install "fad"
  end

  test do
    assert_match "fad #{version}", shell_output("#{bin}/fad --version")
  end
end
