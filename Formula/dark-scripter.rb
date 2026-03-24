class DarkScripter < Formula
  desc "Listen for macOS dark/light mode changes and run user scripts"
  homepage "https://github.com/pvinis/dark-scripter"
  url "https://github.com/pvinis/dark-scripter/releases/download/v0.1.9/dark-scripter-macos-universal.zip"
  sha256 "66668603a68611fa95b1c0ea1132432190db53d6a11c9d55a3faca057cc9a3e9"
  license "MIT"

  depends_on :macos

  def install
    bin.install "dark-scripter"
  end

  service do
    run [opt_bin/"dark-scripter"]
    keep_alive true
    run_at_load true
    log_path var/"log/dark-scripter.log"
    error_log_path var/"log/dark-scripter.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dark-scripter --version")
  end
end
