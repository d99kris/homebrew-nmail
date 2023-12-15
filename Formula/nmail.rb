class Nmail < Formula
  desc "Terminal-based email client"
  homepage "https://github.com/d99kris/nmail"
  url "https://github.com/d99kris/nmail/archive/refs/tags/v3.67.tar.gz"
  sha256 "f7963bd510069d5f0f8fdf453ee0aea87facfe3c31a7552f12110867b9664e6e"
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
