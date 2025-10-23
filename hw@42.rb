# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HwAT42 < Formula
  desc "O hw (Hello World) é uma ferramenta de linha de comando (CLI) criada para imprimir exemplos básicos de programas “Hello, World!” em diferentes linguagens de programação."
  homepage "https://github.com/lopesivan/hw"
  url "https://github.com/lopesivan/hw.git",
    revision: "bce43e5943d7221b095bcbdbd0d6b23c39fe64b8"
  version "1.0.4"
#  head "https://github.com/lopesivan/hw",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/hw/hw-custom-35e227f25cd0e90b03edc280f0392e9ff6048c0f-20251023.diff'
    sha256 '6ca7444de16c8e03b0f120465d880a6b4544dfc09ddabc748af8f364b47ae730'
  end
  def install
    args = %W[
      --no-warn-unused-cli
      -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE
      -DCMAKE_BUILD_TYPE:STRING=Debug
      -DCMAKE_C_COMPILER:FILEPATH=clang
      -DCMAKE_CXX_COMPILER:FILEPATH=clang++
      -DCMAKE_INSTALL_PREFIX=#{prefix}
    ]
  
    mkdir("build") do
      system("cmake", *args, "..", "-G", "Ninja")
      system("ninja")
      system("ninja", "install")
    end
  end
  test do
    system "false"
  end
end
