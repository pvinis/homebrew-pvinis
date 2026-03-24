class DarkScripter < Formula
  desc "Listen for macOS dark/light mode changes and run user scripts"
  homepage "https://github.com/pvinis/dark-scripter"
  url "https://github.com/pvinis/dark-scripter/releases/download/v0.1.5/dark-scripter-macos-universal.zip"
  sha256 "e6ed90db88a695c54c5ac859b90bcfb339fbe928ef522b671c6eb44d5d8dbea6"
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
