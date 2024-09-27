# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Xdo < Formula
  desc "xdo - Perform actions on windows."
  homepage "https://github.com/baskerville/xdo"
  url "https://github.com/baskerville/xdo", using: :git
  version "0.5.7-1-g688f10f"
  head "https://github.com/baskerville/xdo", branch: "master", using: :git
  license "GPL-3.0-or-later"

  def install
    system "make", "CC=/usr/bin/gcc"
    system "make","PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
