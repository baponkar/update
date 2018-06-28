#!/bin/bash
echo "Do You want to start upgrade and update [Y/n]"
read x
echo "$x"
if [ "$x" == "y" ] || [ "$x" == "Y" ] ;
  then

  TEXT_RESET='\e[0m'
  TEXT_YELLOW='\e[0;33m'
  TEXT_RED_B='\e[1;31m'

  sudo apt-get update
  echo -e $TEXT_YELLOW
  echo 'APT update finished...'
  echo -e $TEXT_RESET
  sudo apt-get dist-upgrade -y
  echo -e $TEXT_YELLOW
  echo 'APT distributive upgrade finished...'
  echo -e $TEXT_RESET
  sudo apt-get upgrade -y
  echo -e $TEXT_YELLOW
  echo 'APT upgrade finished...'
  echo -e $TEXT_RESET
  sudo apt-get autoremove
  echo -e $TEXT_YELLOW
  echo 'APT auto remove finished...'
  echo -e $TEXT_RESET
  say update completed
   if [ -f /var/run/reboot-required ]; then
    echo -e $TEXT_RED_B
    echo 'Reboot required!'
    echo -e $TEXT_RESET
   fi
 elif [ "$x" == "n" ] || [ "$x" == "N" ];
  then
  echo "Good Bye!"
  exit
 else
  echo "You choose wrong option!!!!!!!!"
 fi
