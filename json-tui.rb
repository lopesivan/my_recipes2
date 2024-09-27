class JsonTui < Formula
  desc "A prototype of a JSON file explorer using a terminal text interface."
  homepage "https://github.com/ArthurSonzogni/json-tui"
  url "https://github.com/ArthurSonzogni/json-tui.git",
    branch: "main",
    using: :git
  version "1.3.0"
  head "https://github.com/ArthurSonzogni/json-tui.git",
    branch: "master"
  license "GPL-3.0-or-later"

  def install
    ENV["CPLUS_INCLUDE_PATH"] = "/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11"
    ENV["LIBRARY_PATH"] = "/usr/lib/gcc/x86_64-linux-gnu/11"
    args = %W[
      --no-warn-unused-cli
      -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE
      -DCMAKE_BUILD_TYPE:STRING=Debug
      -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/clang
      -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/clang++
      -DCMAKE_INSTALL_PREFIX=#{prefix}
    ]

    mkdir "build" do
      system "/usr/local/bin/cmake", *args, "..", "-G", "Ninja"
      system "/usr/bin/ninja"
      system "/usr/bin/ninja", "install"
    end
  end

  test do
    system "false"
  end
end
