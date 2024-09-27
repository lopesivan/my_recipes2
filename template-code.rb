# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class TemplateCode < Formula
  desc "Commnad line template snipetts."
  homepage "https://github.com/lopesivan/template-code"
  url "https://github.com/lopesivan/template-code.git",
    branch: "main",
    using: :git
  version "1.2"
  head "https://github.com/lopesivan/template-code.git",
    branch: "master",
    using: :git
  license "GPL-3.0-or-later"

  def install
    prefix.install Dir["*"]
    # prefix.install "w-new-cpp"
    # system "/usr/bin/make", "-C", "#{prefix}/w-new-cpp/w/c"

  end

  test do
    system "false"
  end
end
