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
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/st-autotools/st-autotools-custom-f4e14aed9a6ba58d7db1e42e5166971fe7eab4ff-20250805.diff'
    sha256 '76723bf63f78a0c0dde1d077c75b68b55ac6fda3b991741569e42019676c7f59'
  end
    def install
      # Força o uso do pkg-config do sistema
      ENV["PKG_CONFIG"] = "/usr/bin/pkg-config"
  
      # Força o path onde estão os .pc files
      ENV["PKG_CONFIG_PATH"] = "/usr/lib/x86_64-linux-gnu/pkgconfig"
  
      system "./gera-opcao.sh", "enable", "debug", '"Ativa modo de depuração"'
      system "sh", "autogen.sh"
      system "./configure", "--prefix=#{prefix}"
      system "make", "CC=/bin/c99"
      #system 'make', "PREFIX=#{prefix}", 'install'
    end
  test do
    system "false"
  end
end
