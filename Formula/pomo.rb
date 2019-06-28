class Pomo < Formula
  desc "Pomodoro CLI"
  homepage "https://kevinschoon.github.io/pomo"
  url "https://github.com/kevinschoon/pomo/releases/download/0.7.1/pomo-0.7.1-darwin-amd64"
  sha256 "506319c7f73ada394473b7be07d2eade16374a2682c497feea5f5d51ccf10b26"

  def install
    bin.install Dir["./*"]
  end

  test do
    assert_match "ok", shell_output("#{bin}/pomo")
  end
end
