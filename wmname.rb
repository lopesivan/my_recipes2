# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Wmname < Formula
  desc "wmname - prints/sets the WM name."
  homepage "https://git.suckless.org/wmname"
  url "https://git.suckless.org/wmname", using: :git
  version "0.2"
  head "https://git.suckless.org/wmname", branch: "master", using: :git
  license "GPL-3.0-or-later"

  def install
    system "make", "CC=/usr/bin/gcc"
    system "make","PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
