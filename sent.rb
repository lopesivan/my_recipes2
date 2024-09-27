# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sent < Formula
  desc "Slide - Simple plaintext presentation tool"
  homepage "https://git.suckless.org/sent"
  url "https://git.suckless.org/sent", using: :git
  version "0.2"
  head "https://git.suckless.org/sent",
    branch: "master",
    using: :git
  license "GPL-3.0-or-later"

  def install
    %W[
      example
      nyan.png
    ].each do |file|
	  system "cp", "-r", file, "#{prefix}"
    end
    system "make", "CC=/usr/bin/gcc"
    system "make","PREFIX=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
