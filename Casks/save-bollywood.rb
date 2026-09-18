cask "save-bollywood" do
  version "3.0"
  sha256 "f28833a6a36bd249c18de297eb673f58c16b6d0d6d6c4a0a24c33d3a293c69a4"

  url "https://github.com/pvinis/save-bollywood/releases/download/v#{version}/SaveBollywood-#{version}.zip"
  name "SaveBollywood"
  desc "Screen saver that plays your own video files"
  homepage "https://github.com/pvinis/save-bollywood"

  depends_on macos: :tahoe

  screen_saver "SaveBollywood.saver"
end
