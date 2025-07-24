# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HisAt42 < Formula
  desc "A command history utility with icons and colors that works on Windows and GNU/Linux.
"
  homepage "https://terminalroot.com.br/2025/07/veja-o-historico-do-terminal-de-forma-interativa.html"
  url "https://github.com/terroo/his.git",
      branch: "main",
      revision: "695c51a145f9911735b61fb673241e190ea23be3"
  version "0.8.5"
  head "https://github.com/terroo/his.git", branch: "main"
  license "GPL-3.0-or-later"

  def install
    system "cmake", ".", "-B", "build"
    system "cmake", "--build", "build"
    system "cmake", "--install", "build", "--prefix", "#{prefix}"
  end

  test do
    system "false"
  end
end
