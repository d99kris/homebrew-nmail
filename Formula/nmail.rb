class Nmail < Formula
  desc "Terminal-based email client"
  homepage "https://github.com/d99kris/nmail"
  url "https://github.com/d99kris/nmail/archive/refs/tags/v4.30.tar.gz"
  sha256 "002f32ecd9b7aea0a1e5ba9ab17c5e4f0c76c89ce4db220ad955b8ab251591c9"
  license "MIT"

  depends_on "ccache"
  depends_on "cmake" => :build
  depends_on "openssl"
  depends_on "ncurses"
  depends_on "xapian"
  depends_on "sqlite"
  depends_on "libmagic"
  depends_on "ossp-uuid"

  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "-s"
      system "make", "install"
    end
  end

  test do
    system "#{bin}/nmail", "--version"
  end
end
