class Pomo < Formula
  desc "Pomodoro CLI"
  homepage "https://kevinschoon.github.io/pomo"
  version "0.7.1"
  url "https://github.com/kevinschoon/pomo/releases/download/#{version}/pomo-#{version}-darwin-amd64"
  sha256 "506319c7f73ada394473b7be07d2eade16374a2682c497feea5f5d51ccf10b26"

  def install
    mv "pomo-#{version}-darwin-amd64", "pomo"
    bin.install Dir["./*"]
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/pomo -v")
  end
end
