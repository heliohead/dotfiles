#!/bin/bash

# dependencies
dep=(curl unzip git)

# Make messages to skip
function message_exit(){
  red='\e[0;31m'
  NC='\e[0m' 
  echo -e "${red} $1 ${NC}"
  exit 1
}

# Verify is dep is installed
for i in "${dep[@]}"; do
	if ! command -v $i >/dev/null; then
	  message_exit "##=> You need to have $i installed"
	fi 
done





