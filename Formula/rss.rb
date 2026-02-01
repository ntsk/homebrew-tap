class Rss < Formula
  desc "A simple RSS/Atom feed reader for the terminal"
  homepage "https://github.com/ntsk/rss.rs"
  url "https://github.com/ntsk/rss.rs/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ecba3c9729f781f2e286b323f74c7bd713317af1bb7b021d8ac789084ff8d681"
  license "MIT"

  depends_on "rust" => :build
  depends_on "openssl@3"
  depends_on "pkg-config" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "rss", shell_output("#{bin}/rss --help")
  end
end
