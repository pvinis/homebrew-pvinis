version = "0.7.1"
name = "pomo-#{version}-darwin-amd64"

class Pomo < Formula
  desc "Pomodoro CLI"
  homepage "https://kevinschoon.github.io/pomo"
  url "https://github.com/kevinschoon/pomo/releases/download/#{version}/#{name}"
  sha256 "506319c7f73ada394473b7be07d2eade16374a2682c497feea5f5d51ccf10b26"

  def install
    mv "#{name}" pomo
    bin.install Dir["./*"]
  end

  test do
    assert_match "#{version}", shell_output("#{bin}/pomo -v")
  end
end
