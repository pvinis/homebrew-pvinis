class DarkScripter < Formula
  desc "Listen for macOS dark/light mode changes and run user scripts"
  homepage "https://github.com/pvinis/dark-scripter"
  url "https://github.com/pvinis/dark-scripter/releases/download/v0.1.8/dark-scripter-macos-universal.zip"
  sha256 "950a69ff7563368d6c5b4f27c447c570ad7020869bd3a43e0bcd315530b4cbf0"
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
