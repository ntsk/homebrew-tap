class Fad < Formula
  desc "Upload, download, and install APK/AAB releases on Firebase App Distribution"
  homepage "https://github.com/ntsk/fad"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.5/fad-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "c453d831bddf4617c14a54a9e4f58f39aa5757c51a791d45c15052a1b97a10af"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.5/fad-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "ddde097f2057dd04960dd808d945e9d99553a7381104c68df38f964bb6e6713d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ntsk/fad/releases/download/v0.1.5/fad-v0.1.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c68a5597b74729f1e355e5e48d1b3680ca88d050f0eeabaaf0ee8cc47be80d18"
    end
    on_intel do
      url "https://github.com/ntsk/fad/releases/download/v0.1.5/fad-v0.1.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28370356f4d1959be145159490acbe53f1bfcc3ca49874255215831132676f27"
    end
  end

  def install
    bin.install "fad"
  end

  test do
    assert_match "fad #{version}", shell_output("#{bin}/fad --version")
  end
end
