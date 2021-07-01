function brewit
  brew update --verbose
  brew upgrade
  brew cleanup
  brew doctor
end
