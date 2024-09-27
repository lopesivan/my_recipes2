# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class NativiumAT42 < Formula
  desc "C++ Multiplatform Modular Toolkit Template."
  homepage "https://github.com/nativium/nativium"
  url "https://github.com/nativium/nativium.git",
    revision: "0316d93ad2c21c8c66bdb4b45bc82ba9adcb9e1d"
  version "1.0.2"
#  head "https://github.com/nativium/nativium",
#    branch: "main",
#    using: :git
  license "GPL-3.0-or-later"
  patch do
    url 'https://raw.githubusercontent.com/lopesivan/my_patches/main/nativium/nativium-custom-94ca7ead3c8dc56fc9cb3345701efe52ccf4fd8b-20240401.diff'
    sha256 '9d3b84a940e3228579d9b25aeb217ebb4901f083584a63f3a7435603e71eb806'
  end
  def install
    prefix.install Dir['*']
  end
  test do
    system "false"
  end
end
