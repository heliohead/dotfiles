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
  echo -e "${red}+==-> $1 ${NC}"
  exit 1
}

# Make messages to info
function info(){
  blue='\e[0;34m'
  NC='\e[0m' 
  echo -e "${blue}+==-> $1 ${NC}"
}

# Verify dep installed
for i in "${dep[@]}"; do
	if ! command -v $i >/dev/null; then
	  message_exit "You need to have $i installed"
	fi 
done

# Some variables
tmp_dir=/tmp/dotfiles-master
compress_file=/tmp/dotfiles.zip
src_files=https://github.com/heliohead/dotfiles/archive/master.zip


# Download files
info "Download to $tmp_dir"
curl -Ls -o $compress_file $src_files

# Exit if download error
[ -f $compress_file ] || message_exit "Couldn't download files"

# Extracting 
info "Extracting $compress_file"
unzip	-q $compress_file -d /tmp

# Coping files
info	"Coping you new dotfiles on $HOME "
for i in $(find $tmp_dir/files -name '.*'); do
  cp -iR $i $HOME
done



# Sourcing new .dotfiles
echo "source ~/.bash/init.sh" >> ~/.bashrc


# Garbage colector :D
info "Remove temporary files"
rm -rf $tmp_dir && rm $compress_file

# Done!
echo -e "\e[1;222;42m Done, Have fun! \e[0m" 
sleep 1

# Restart .bashrc
exec bash