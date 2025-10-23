# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class StAutotoolsAT42 < Formula
  desc "st is a simple terminal implementation for X."
  homepage "https://github.com/lopesivan/st-autotools"
  url "https://github.com/lopesivan/st-autotools.git",
    revision: "41de93778bc76679a94fc96ac74f10941470e655"
  version "1.0.1"
#  head "https://github.com/lopesivan/st-autotools",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/st-autotools/st-autotools-custom-41de93778bc76679a94fc96ac74f10941470e655-20251023.diff'
    sha256 '2c6f82c798436d97d0f957fba9273975e91f153b90b5b5c93fe8759d6ec5c62e'
  end
  def install
    system("aclocal", "-I", "m4", "--install")
    system("autoconf")
    system("autoheader")
    system("mkdir", "build-aux")
    system("automake", "--add-missing")
  
    #./configure
    system("./configure", "--prefix=#{prefix}")
    system("make", "CC=/bin/c99", "install")
  end
  test do
    system "false"
  end
end
