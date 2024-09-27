# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Bangsh < Formula
  desc "Bang.sh - for easy Shell Scripting"
  homepage "https://github.com/bangsh/bangsh"
  version "0.1.1"
  url "https://github.com/lopesivan/bangsh.git",
    branch: "main",
    revision: "2c9c70d73fd161c57ffd3595d95e6285698a9c59"
  license "MIT"
  revision 1
  head "https://github.com/lopesivan/bangsh.git", branch: "master"

  # patch do
  #   url "https://raw.githubusercontent.com/lopesivan/bangsh/patches/bangsh-makefile-20220602-86e51ea.diff"
  #   sha256 "1ae3f11e90ada2638d3ab61605a004354c14167a86917d515f1961246b1ebba0"
  # end

  patch do
    url "https://raw.githubusercontent.com/lopesivan/bangsh/patches/bangsh-set-variable-20220602-49f417b.diff"
    sha256 "62ad3a3871e3edc2b06dda5f1e7aaa3d4744ed3c64a3b7bd0c9497c25b0d6102"
  end

  def install
    %W[
      bang
      boot.sh
      CHANGELOG.md
      CONTRIBUTING.md
      docs
      fixtures
      LICENSE
      Makefile
      modules
      README.md
      samples
      tasks
      tests
    ].each do |file|
	  system "cp", "-r", file, "#{prefix}"
    end

    # inreplace "bang", "__BANG_PATH__", HOMEBREW_PREFIX
    inreplace "bang", "__BANG_PATH__", "#{prefix}"
    bin.install "bang" => "bang"
    # system "make","prefix=#{prefix}", "install"
  end

  test do
    system "false"
  end
end
