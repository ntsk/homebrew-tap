class Fad < Formula
  desc "Upload, download, and install APK/AAB releases on Firebase App Distribution"
  homepage "https://github.com/ntsk/fad"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.1/fad-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "3f8f7355bd6da45f518db60f7416afe34f8ab454f23e9782a4f6b652ae47a7f9"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.1/fad-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "c69fe4412304cb4db19a204269b12b1b9be79bd9601796cbbbd43dc42bd36953"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.1/fad-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "705be4d4f7fd4182610c0cd4f3bbeec843dd7752b9b72de3b4a142ea081d736d"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.1/fad-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "04f80077ad27e77bbe75a3cbe4110af1fb9c110c4bc109d2b6fb08defdaabba7"
    end
  end

  def install
    bin.install "fad"
  end

  test do
    assert_match "fad #{version}", shell_output("#{bin}/fad --version")
  end
end
