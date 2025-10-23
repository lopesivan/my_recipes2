# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HwAT42 < Formula
  desc "O hw (Hello World) é uma ferramenta de linha de comando (CLI) criada para imprimir exemplos básicos de programas “Hello, World!” em diferentes linguagens de programação."
  homepage "https://github.com/lopesivan/hw"
  url "https://github.com/lopesivan/hw.git",
    revision: "26e513b092a2185c9ca29bfaddc1467a5a07812c"
  version "1.0.2"
#  head "https://github.com/lopesivan/hw",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/hw/hw-custom-8fc667e37774fe2bcc1b75d4f8864649ca4f06f0-20251023.diff'
    sha256 'bff56369baf47079803bd13a74c3648ca7bbb22c03feae2f00ab1961173e1e67'
  end
  def install
    #ENV["CPLUS_INCLUDE_PATH"] = "/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11"
    #ENV["LIBRARY_PATH"] = "/usr/lib/gcc/x86_64-linux-gnu/11"
    args = %W[
      --no-warn-unused-cli
      -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE
      -DCMAKE_INSTALL_PREFIX=#{prefix}
    ]
  
    mkdir "build" do
      system "/usr/local/bin/cmake", *args, "..", "-G", "Ninja"
      system "/usr/bin/ninja"
      system "/usr/bin/ninja", "install"
    end
  end
  test do
    system "false"
  end
end
