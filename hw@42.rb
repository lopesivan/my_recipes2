# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HwAT42 < Formula
  desc "Ferramenta CLI para imprimir exemplos de Hello World em diferentes linguagens"
  homepage "https://github.com/lopesivan/hw"
  url "https://github.com/lopesivan/hw.git",
      revision: "bce43e5943d7221b095bcbdbd0d6b23c39fe64b8"
  license "GPL-3.0-or-later"
  head "https://github.com/lopesivan/hw.git", branch: "main"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    assert_match "Hello", shell_output("#{bin}/hw --help")
  end
end
