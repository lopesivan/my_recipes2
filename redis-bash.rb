# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class RedisBash < Formula
  desc "REDIS-BASH - Bash library to access Redis Databases"
  homepage "https://github.com/caquino/redis-bash"
  url "https://github.com/caquino/redis-bash",
    branch: "master",
    using: :git
  version "1.0.0"
  head "https://github.com/lopesivan/xp.git",
    branch: "master",
    using: :git
  license "GPL-3.0-or-later"

  def install
    %W[
      debian
      Makefile
      README.md
      redis-bash-cli
      redis-bash-lib
      redis-pubsub-test
    ].each do |file|
	  system "cp", "-r", file, "#{prefix}"
    end

    bin.install "redis-bash-cli" => "redis-bash-cli"
  end

  test do
    system "false"
  end
end
