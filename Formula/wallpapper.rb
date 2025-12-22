class Wallpapper < Formula
  desc "Command-line tool to create dynamic wallpapers for macOS"
  homepage "https://github.com/mczachurski/wallpapper"
  url "https://github.com/mczachurski/wallpapper/archive/refs/tags/1.7.4.tar.gz"
  sha256 "5d099a7b09948307ccab4aca046e90ef5456c13cb826498a5a871205adb57afd"
  license "MIT"

  depends_on xcode: ["10.2", :build]
  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/wallpapper"
    bin.install ".build/release/wallpapper-exif"
  end

  test do
    assert_match "wallpapper", shell_output("#{bin}/wallpapper 2>&1", 1)
  end
end
