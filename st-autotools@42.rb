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
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/st-autotools/st-autotools-custom-469ab8e14f397c6cf3dc91779be560feb8a650d3-20251023.diff'
    sha256 '2f2fbe04b573a00bad5379274d4b8b80832efa0dca1e718eb82e06be2eb25da5'
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
