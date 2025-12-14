cask 'fileaway' do
  version '1.1.10,251004180811996079'
  sha256 '55e3624bceb83b66f1f6ca327ac8d8fb525d1f8ca329e600a1375b83e985e5ff'

  url "https://github.com/inseven/fileaway/releases/download/#{version.csv.first}/Fileaway-#{version.csv.first}-#{version.csv.second}.zip"
  name 'Fileaway'
  desc 'Rules-based file management for macOS'
  homepage 'https://fileaway.jbmorley.co.uk/'

  auto_updates true

  app 'Fileaway.app'
end
