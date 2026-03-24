class DarkScripter < Formula
  desc "Run scripts when macOS switches between dark and light mode"
  homepage "https://github.com/pvinis/dark-scripter"
  url "https://github.com/pvinis/dark-scripter/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "527910a1c96e53e3eb013190f530594d683d209ee8b68088d82aaee68734cda7"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/dark-scripter"
  end

  service do
    run opt_bin/"dark-scripter"
    keep_alive true
    log_path var/"log/dark-scripter.log"
    error_log_path var/"log/dark-scripter.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dark-scripter --version")
  end
end
