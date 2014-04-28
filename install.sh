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

# Make messages to current_status
function current_status(){
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
compress_files=/tmp/dotfiles.zip
src_files=https://github.com/heliohead/dotfiles/archive/master.zip
bk_files="/tmp/yours_${RAMDOM}.sh"

# Download files
current_status "Download $compress_file to $tmp_dir"
sleep 1
curl -Ls -o $compress_files $src_files

# Extracting 
current_status "Extracting $compress_file"
sleep 1
unzip	-q $compress_files -d /tmp


