# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ezored < Formula
  desc "C++ Multiplatform Toolkit Template."
  homepage "https://ezored.github.io/"
  url "https://github.com/ezored/ezored.git",
    branch: "main",
    revision: "c6fd66f06c0f9a5694160f76d254a318fa7d1762"
  version "1.0.0"
  head "https://github.com/ezored/ezored.git",
    branch: "main",
    using: :git
  license "GPL-3.0-or-later"

  patch do
    url "https://raw.githubusercontent.com/lopesivan/my_patches/main/ezored/ezored-adicionando_wrapper_en_shell_script-20220720-1c31910.diff"
    sha256 "4905bd83c0c81c4e520589783382da10d411b2465fdfd504754cd27ba668bf66"
  end

  def install
    bin.install "ezored.sh" => "ezored" #Essa linha deve vir antes
    prefix.install Dir["*"]             #Essa linha deve vir depois
  end

  test do
    system "false"
  end
end
