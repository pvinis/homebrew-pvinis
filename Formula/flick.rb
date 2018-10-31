require "language/node"

class Flick < Formula
  desc "🌝 🌚 Switch between light and dark mode, and have all your tools swap!"
  homepage "https://github.com/pvinis/flick"
  url "https://github.com/pvinis/flick/archive/version/0.1.0.tar.gz"
  sha256 "c5de968a40c4a9a4605da43610b02af8d7c0e19f1baaedb10ee5ce6c2d9509ad"

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
