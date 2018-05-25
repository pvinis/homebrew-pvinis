#cask 'spacemacs-nightly' do
  #version '2016-10-06_01-43-38-6e6c08815347a78008211613c9ddfa0acd7f0ef8'
  #sha256 '53a53cf2c62dcaada4ab6ec0e114ab9ca930688bbba455a90c6d3b316a7b0830'

 # url "https://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
 # appcast 'https://emacsformacosx.com/atom/daily',
  #        checkpoint: 'e99da4f3923fdfcd3a28efae9fae7e624d070cc210bb45099ff570caef2eab00'
  #name 'Spacemacs'
  #homepage 'https://emacsformacosx.com/'
  #license :gpl

 # preflight do
    #system "mv", "#{staged_path}/Emacs.app", "#{staged_path}/Spacemacs.app"
    #system "rm", "#{staged_path}/Spacemacs.app/Contents/Resources/Emacs.icns"
   # system "curl -L \"https://github.com/nashamri/spacemacs-logo/blob/master/spacemacs.icns?raw=true\" -o #{staged_path}/Spacemacs.app/Contents/Resources/Emacs.icns"
  #end

 # app 'Spacemacs.app'
#end

