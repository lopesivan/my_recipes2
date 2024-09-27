# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Xcwd < Formula
  desc "xcwd - X current working directory."
  homepage "https://github.com/schischi/xcwd"
  url "https://github.com/schischi/xcwd", using: :git
  version "0.1"
  head "https://github.com/schischi/xcwd", branch: "master", using: :git
  license "GPL-3.0-or-later"

  def install
    system "make", "CC=/usr/bin/gcc"
    system "make","prefix=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
