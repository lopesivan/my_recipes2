# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Neroaac < Formula
  desc "Nero AAC Encoder/Decoder/Tag"
  homepage ""
  url "http://192.168.2.43:8899/my_gnu/neroAac-1.5.4.0.tar.gz"
  version "1.5.4.0"
  sha256 "8cecafdb27edad16b7018352001378947f4271413c634b909257d80a350a9c60"
  license "gpl-3.0"

  def install
    bin.install "neroAacDec" => "neroaacdec"
    bin.install "neroAacEnc" => "neroaacenc"
    bin.install "neroAacTag" => "neroaactag"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test neroAac`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
