#!/bin/bash

## This shell script builds the react program and copy the build files to SpringBoot program
## parameter 1: spring boot program resource/public directory. For example:~/workplace-insensitive/demo/src/main/resources/public

#My typical usange is: ./demo_package.sh ~/workplace-insensitive/demo/src/main/resources/public
echo "current dir is $(pwd)"
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
bold=`tput bold`
echo "${bold}running npm rum build on path:$(pwd)${reset}"

# build the react program
npm run build

if [ $? == 0 ]
then
    echo "${bold}${green}------------------------------${reset}"
    echo "${bold}${green}     React build success      ${reset}"
    echo "${bold}${green}------------------------------${reset}"
else
    echo "${bold}${red}------------------------------${reset}"
    echo "${bold}${red}     React build failed      ${reset}"
    echo "${bold}${red}------------------------------${reset}"
    exit 1
fi

echo "${bold}Copying react build target to SpringBoot directory.${reset}"
echo "${bold}Running: scp -r build/. ${1}${reset}"
scp -r build/. ${1}