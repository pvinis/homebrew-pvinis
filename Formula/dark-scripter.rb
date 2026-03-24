class DarkScripter < Formula
  desc "Listen for macOS dark/light mode changes and run user scripts"
  homepage "https://github.com/pvinis/dark-scripter"
  url "https://github.com/pvinis/dark-scripter/releases/download/v0.1.6/dark-scripter-macos-universal.zip"
  sha256 "5996c20bb26ddf3134eda06e451a7d26ab83a44a500468c93c1d5b7b6b5d5657"
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
