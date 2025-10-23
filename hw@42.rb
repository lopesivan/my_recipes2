# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HwAT42 < Formula
  desc "O hw (Hello World) é uma ferramenta de linha de comando (CLI) criada para imprimir exemplos básicos de programas “Hello, World!” em diferentes linguagens de programação."
  homepage "https://github.com/lopesivan/hw"
  url "https://github.com/lopesivan/hw.git",
    revision: "26e513b092a2185c9ca29bfaddc1467a5a07812c"
  version "1.0.1"
#  head "https://github.com/lopesivan/hw",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/hw/hw-custom-a64330c4c77b768042a78e19c784efeaea3c3e50-20251023.diff'
    sha256 'eaaa59fd7fc28ac0f679f4d08ce3490619c64500aa6c15f3f0d33c160647c717'
  end
    def install
      system 'cmake', '.'
      system 'make', "PREFIX=#{prefix}", 'install'
    end
  test do
    system "false"
  end
end
