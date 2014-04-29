#!/bin/bash
#
# Install dotfiles @heliohead
#

set -e

# dependencies
dep=(curl unzip git)

# Make messages to skip
function message_exit(){
  red='\e[0;31m'
  NC='\e[0m' 
  echo -e "${red}##=> $1 ${NC}"
  exit 1
}

# Make messages to info
function info(){
  blue='\e[0;34m'
  NC='\e[0m' 
  echo -e "${blue}##=> $1 ${NC}"
}

# Verify is dep is installed
for i in "${dep[@]}"; do
	if ! command -v $i >/dev/null; then
	  message_exit "You need to have $i installed"
	fi 
done

# Some variables
tmp_dir=/tmp/dotfiles-master
compress_file=/tmp/dotfiles.zip
src_files=https://github.com/heliohead/dotfiles/archive/master.zip
bk_files="/tmp/yours_${RAMDOM}.sh"

# Download files
info "Download $compress_file to $tmp_dir"
curl -Ls -o $compress_file $src_files

# Extracting 
info "Extracting $compress_file"
unzip	-q $compress_file -d /tmp


# Make a backup file if exist folder
if [[ ! -d ~/.dotfiles ]]; then
	info "Coping new .dotfiles"
	cp -R $tmp_dir ~/.dotfiles	
else
	info "Coping your .dotfiles to .dotfiles_old"
	mv -f $HOME/.dotfiles $HOME/.dotfiles_old
	info "Coping new .dotfiles"
	cp -R $tmp_dir ~/.dotfiles
fi

# Sourcing new .dotfiles
echo "source ~/.dotfiles/init.sh" >> ~/.bashrc


# Garbage colector :D
info "Remove temporary files"
rm -rf $tmp_dir && rm $compress_file

# Done!
echo -e "\e[1;222;42m Done, Have fun! \e[0m" 
sleep 1

# Restart .bashrc
exec bash