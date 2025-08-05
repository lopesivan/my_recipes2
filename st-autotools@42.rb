# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class StAutotoolsAT42 < Formula
  desc "st is a simple terminal implementation for X."
  homepage "https://github.com/lopesivan/st-autotools"
  url "https://github.com/lopesivan/st-autotools.git",
    revision: "9c32113c8db90db10fa7e29b087515e2b2c776b6"
  version "1.0.1"
#  head "https://github.com/lopesivan/st-autotools",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/st-autotools/st-autotools-custom-3104e1876c087da58d4e36d02a03a7da5dc64f63-20250805.diff'
    sha256 '5d83c036f7914ada9b63099ceb94436f861fbf0cf8365f79596bd748d36ca870'
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
