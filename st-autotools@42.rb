# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class StAutotoolsAT42 < Formula
  desc "st is a simple terminal implementation for X."
  homepage "git@github.com:lopesivan/st-autotools.git"
  url "git@github.com:lopesivan/st-autotools.git.git",
    revision: "c68401fde9c25b94e72ca7f68d1513dc4349713a"
  version "1.0.1"
#  head "git@github.com:lopesivan/st-autotools.git",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/st-autotools/st-autotools-custom-c08febe4704ded4ad927b0576e578d24fb0c5133-20250805.diff'
    sha256 'b5f9ee24a0a3e79d9639522b257ca11227d4a404e9be40a47062e137e1cae918'
  end
  def install
    system './gera-opcao.sh', 'enable', 'debug', '"Ativa modo de depuração"'
    system 'sh', './autogen.sh'
    system './configure'
    system 'make'
    #system 'make', "PREFIX=#{prefix}", 'install'
  end
  
  
  test do
    system "false"
  end
end
