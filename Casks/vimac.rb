cask 'vimac' do
  version '0.3.6'
  sha256 'e03ed4f0e86082abd7b12210177a3d40ab87a0319bcb326229ed8d3b133fe409'

  url "https://github.com/dexterleng/vimac/releases/download/v#{version}/vimac-v#{version}.zip"
  appcast 'https://github.com/dexterleng/vimac/releases'
  name 'vimac'
  homepage 'https://github.com/dexterleng/vimac'

  app '0 A.D.app'
end
