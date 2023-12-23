class Nmail < Formula
  desc "Terminal-based email client"
  homepage "https://github.com/d99kris/nmail"
  url "https://github.com/d99kris/nmail/archive/refs/tags/v4.35.tar.gz"
  sha256 "3e08786a087913ab60618cf3b41da1d8336ea6d2448d0db7c40d3723c9bdf9df"
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
