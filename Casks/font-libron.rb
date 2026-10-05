cask "font-libron" do
  version "0.25"
  sha256 "a732102b75e6016ae52d39ec22e182bc89365612c906b5898bcd1f8e02b91a57"

  url "https://github.com/nicoverbruggen/libron/releases/download/v#{version}/Libron.zip"
  name "Libron"
  desc "Serif font tuned from Readerly for digital reading and e-readers"
  homepage "https://github.com/nicoverbruggen/libron"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Libron-Bold.ttf"
  font "Libron-BoldItalic.ttf"
  font "Libron-Italic.ttf"
  font "Libron-Regular.ttf"
end
