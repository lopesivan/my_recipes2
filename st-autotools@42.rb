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
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/st-autotools/st-autotools-custom-b892f44bc6dbe39257ddc8a0856f52518fcad8f8-20250805.diff'
    sha256 'dc37eff9369a28b7205c8b0323f3bd31bba95fb5460162af7f3db12560177441'
  end
    def install
  
      ENV["PKG_CONFIG_PATH"] = [
      Formula["freetype"].opt_lib/"pkgconfig",
      Formula["fontconfig"].opt_lib/"pkgconfig",
      Formula["libpng"].opt_lib/"pkgconfig",
      Formula["zlib"].opt_lib/"pkgconfig",
      Formula["bzip2"].opt_lib/"pkgconfig",
      Formula["expat"].opt_lib/"pkgconfig"
      ].join(":")
  
      system "./gera-opcao.sh", "enable", "debug", '"Ativa modo de depuração"'
      system "sh", "autogen.sh"
      system "./configure", "--prefix=#{prefix}"
      system "make", "CC=/bin/c99", 'install'
    end
  test do
    system "false"
  end
end
