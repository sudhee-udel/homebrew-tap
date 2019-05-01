class Hworld < Formula
  desc "Simple hello world script."
  homepage "https://github.com/rob-dalton/hworld"
  url "https://github.com/rob-dalton/hworld/raw/master/hworld-1.0.tar.gz"
  sha256 "8443118e257c4c109332ae58df932da99f3bd1291a67b8a8a0283f529bc4f48e"
  version "1.0"

  def install
    # install hworld script, create symlink to script in /usr/local/bin
    bin.install "hworld"
  end

  test do
    # test script output
    assert_equal %x('#{bin}/hworld'), "Hello world!\n"
  end
end
