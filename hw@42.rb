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
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/hw/hw-custom-26e513b092a2185c9ca29bfaddc1467a5a07812c-20251023.diff'
    sha256 '4580a46523afe71589b0ffaf13278b8306d1a2b95c7a7d990ead500f1880a131'
  end
  
  test do
    system "false"
  end
end
