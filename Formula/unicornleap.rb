class Unicornleap < Formula
  desc "Make unicorns leap across your screen!"
  homepage "https://github.com/jgdavey/unicornleap"
  version "github-main"
  revision 4
  url "https://github.com/jgdavey/unicornleap/archive/refs/heads/main.zip"
  sha256 "7ce11e8037c502e1348347b39381543b0908ae495b9c5fea9e33a137fbbf2bcf"

  def install
    system "make"
#     system "make", "images"
    bin.install Dir["./build/unicornleap"]
  end

  test do
    system "unicornleap", "-h"
  end
end
