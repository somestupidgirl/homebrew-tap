class Libdirecthw < Formula
  desc "library and framework to complement DirectHW.kext"
  homepage "https://www.coreboot.org/DirectHW"
  url "https://github.com/somestupidgirl/libdirecthw/archive/refs/tags/v1.3.tar.gz"
  sha256 "569a10198b17078ddc0cf6442089b9d09bdd4ba6f3b66d11fd7cd60b6a8b4ccf"
  license "COPYING"

  depends_on "make" => :build

  def install
    system "make", "main"
    system "make", "libs"
    include.install "build/Release/usr/local/include/Directhw.h"
    frameworks.install "build/Release/DirectHW.framework"
    lib.install "build/Release/libDirectHW.a"
    lib.install "build/Release/libDirectHW.dylib"
  end

  test do
    system "false"
  end
end
