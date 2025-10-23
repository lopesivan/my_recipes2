# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HwAT42 < Formula
  desc "O hw (Hello World) é uma ferramenta de linha de comando (CLI) criada para imprimir exemplos básicos de programas “Hello, World!” em diferentes linguagens de programação."
  homepage "https://github.com/lopesivan/hw"
  url "https://github.com/lopesivan/hw.git",
    revision: "bce43e5943d7221b095bcbdbd0d6b23c39fe64b8"
  version "1.0.3"
#  head "https://github.com/lopesivan/hw",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  def install
    #ENV["CPLUS_INCLUDE_PATH"] = "/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11"
    #ENV["LIBRARY_PATH"] = "/usr/lib/gcc/x86_64-linux-gnu/11"
    args = %W[
      -DCMAKE_INSTALL_PREFIX=#{prefix}
    ]

    mkdir "build" do
      system "/usr/local/bin/cmake", "..", *args
      #system "make"
      #system "make", "install"
    end

  end
  test do
    system "false"
  end
end
