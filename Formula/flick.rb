require "language/node"

class Flick < Formula
  desc "🌝 🌚 Switch between light and dark mode, and have all your tools swap!"
  homepage "https://github.com/pvinis/flick"
  url "https://github.com/pvinis/flick/archive/version/0.2.2.tar.gz"
  sha256 "a22557d6be31525bb3302c1e23f4737cd6dff37eef1370e224bc5e92362ca9e4"

  bottle :unneeded

  depends_on "node" => :recommended

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"flick", "-v"
  end
end
