#!/bin/bash

apt install figlet -y

clear
clear
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'



echo -e $red "

           welcome answer the options

            hi "

sleep 5
clear

figlet hi
figlet althaf
figlet setta

sleep 7
clear

figlet I have
figlet a doubt

figlet answer
figlet that

sleep 7
clear
figlet hehe
sleep 4
clear
echo -e $grn "   the question is :-"


echo -e  $ylo " chechus alam vititu chetan na
               ❤️ chayan start cheda

               chetan ude reason nth arykum

               send the answer in my wha :-

          "
sleep 10

echo $blue "

                enetu chetana propose chedal

                answer nth ayrikum ?

                Accept or reject ?

                wha me :-

                  "
echo -e " chose your option if accept type 1
          If reject type 2 
"
echo ""
echo -e $pink "            (1) Accept
"
echo -e $cyan "
                           (2) reject
                "

read -p " Enter Your Choice :- " choice

if [ "$choice" = 1 ];then

echo $red "answer in my wa"

termux-open-url https://wa.me//+916235369260
fi


if [ "$choice" = 2 ];then

echo " wha the answer "

termux-open-url https://wa.me//+916235369260


fi
