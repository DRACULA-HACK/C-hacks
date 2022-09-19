


red='\033[1;31m'

rset='\033[0m'

grn='\033[1;32m'

ylo='\033[1;33m'

blue='\033[1;34m'

cyan='\033[1;36m'

pink='\033[1;35m'

banner() {

clear

figlet MASTER-IP-track |pv -qL 100 |lolcat

}

menu() {

    echo -e $blue "

            

            

           (1)  Your ip address

            

           (2) Ip information gathering

            

           (3) ip phishing

            

           (0) exit

            "

read -p  "choose your option => " ip

if [ $ip = 1 ]; then

myipaddr

elif [ $ip = 2 ]; then

useripaddr

elif [ $ip = 3 ]; then

iplogger

elif [ $ip = 0 ]; then

sleep 1

echo -e " ok bye thanks for using thus script "

exit 1

else

echo -e $red "wrong option bro ! "

sleep 3

banner

menu

fi

}

myipaddr() {

myipaddripapico=$(curl -s "https://ipapi.co//json" -L)

myipaddripapicom=$(curl -s "http://ip-api.com/json/" -L)

theip=$(echo $myipaddripapico | grep -Po '(?<="ip":)[^,]*' | tr -d '[]"')

thecity=$(echo $myipaddripapico | grep -Po '(?<="city":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

theregion=$(echo $myipaddripapico | grep -Po '(?<="region":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

thecountry=$(echo $myipaddripapico | grep -Po '(?<="country_name":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

thelat=$(echo $myipaddripapicom | grep -Po '(?<="lat":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

thelon=$(echo $myipaddripapicom | grep -Po '(?<="lon":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

thetime=$(echo $myipaddripapicom | grep -Po '(?<="timezone":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

thepostal=$(echo $myipaddripapicom | grep -Po '(?<="zip":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

theisp=$(echo $myipaddripapico | grep -Po '(?<="org":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

theasn=$(echo $myipaddripapico | grep -Po '(?<="asn":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

thecountrycode=$(echo $myipaddripapico | grep -Po '(?<="country_code":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

thecurrency=$(echo $myipaddripapico | grep -Po '(?<="currency":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

thelanguage=$(echo $myipaddripapico | grep -Po '(?<="languages":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

thecalling=$(echo $myipaddripapico | grep -Po '(?<="country_calling_code":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

banner

printf "\e[0m\n"

printf "\e[0m\n"

printf "  \e[0m\e[1;93m  Ip Address    \e[0m\e[1;96m:\e[0m\e[1;92m   $theip\e[0m\n"

printf "  \e[0m\e[1;93m  City          \e[0m\e[1;96m:\e[0m\e[1;92m   $thecity\e[0m\n"

printf "  \e[0m\e[1;93m  Region        \e[0m\e[1;96m:\e[0m\e[1;92m   $theregion\e[0m\n"

printf "  \e[0m\e[1;93m  Country       \e[0m\e[1;96m:\e[0m\e[1;92m   $thecountry\e[0m\n"

printf "\e[0m\n"

printf "  \e[0m\e[1;93m  Latitude      \e[0m\e[1;96m:\e[0m\e[1;92m    $thelat\e[0m\n"

printf "  \e[0m\e[1;93m  Longitude     \e[0m\e[1;96m:\e[0m\e[1;92m    $thelon\e[0m\n"

printf "  \e[0m\e[1;93m  Time Zone     \e[0m\e[1;96m:\e[0m\e[1;92m    $thetime\e[0m\n"

printf "  \e[0m\e[1;93m  Postal Code   \e[0m\e[1;96m:\e[0m\e[1;92m    $thepostal\e[0m\n"

printf "\e[0m\n"

printf "  \e[0m\e[1;93m  ISP           \e[0m\e[1;96m:\e[0m\e[1;92m   $theisp\e[0m\n"

printf "  \e[0m\e[1;93m  ASN           \e[0m\e[1;96m:\e[0m\e[1;92m   $theasn\e[0m\n"

printf "\e[0m\n"

printf "  \e[0m\e[1;93m  Country Code  \e[0m\e[1;96m:\e[0m\e[1;92m   $thecountrycode\e[0m\n"

printf "  \e[0m\e[1;93m  Currency      \e[0m\e[1;96m:\e[0m\e[1;92m   $thecurrency\e[0m\n"

printf "  \e[0m\e[1;93m  Languages     \e[0m\e[1;96m:\e[0m\e[1;92m   $thelanguage\e[0m\n"

printf "  \e[0m\e[1;93m  Calling Code  \e[0m\e[1;96m:\e[0m\e[1;92m   $thecalling\e[0m\n"

printf "\e[0m\n"

printf "  \e[0m\e[1;93m  location in google map   \e[0m\e[1;96m:\e[0m\e[1;94m  https://maps.google.com/?q=$mylat,$thelon\e[0m\n"

sleep 5

printf "\e[0m\n"

printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Return To Main Menu\e[0m\n"

printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"

printf "\e[0m\n"

read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' mainorexit1

if [[ $mainorexit1 == 1 || $mainorexit1 == 01 ]]; then

banner

menu

elif [[ $mainorexit1 == 2 || $mainorexit1 == 02 ]]; then

printf "\e[0m\n"

printf "\e[0m\n"

exit 1

else

printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"

sleep 1

banner

menu

fi

}

useripaddr() {

banner

printf "\e[0m\n"

printf "\e[0m\n"

printf "\e[0m\n"

read -p $'  \e[1;31m[\e[0m\e[1;37m~\e[0m\e[1;31m]\e[0m\e[1;92m Input IP Address \e[0m\e[1;96m: \e[0m\e[1;93m\en' useripaddress

ipaddripapico=$(curl -s "https://ipapi.co/$useripaddress/json" -L)

ipaddripapicom=$(curl -s "http://ip-api.com/json/$useripaddress" -L)

userip=$(echo $ipaddripapico | grep -Po '(?<="ip":)[^,]*' | tr -d '[]"')

usercity=$(echo $ipaddripapico | grep -Po '(?<="city":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

useregion=$(echo $ipaddripapico | grep -Po '(?<="region":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

usercountry=$(echo $ipaddripapico | grep -Po '(?<="country_name":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

userlat=$(echo $ipaddripapicom | grep -Po '(?<="lat":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

userlon=$(echo $ipaddripapicom | grep -Po '(?<="lon":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

usertime=$(echo $ipaddripapicom | grep -Po '(?<="timezone":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

userpostal=$(echo $ipaddripapicom | grep -Po '(?<="zip":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

userisp=$(echo $ipaddripapico | grep -Po '(?<="org":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

userasn=$(echo $ipaddripapico | grep -Po '(?<="asn":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

usercountrycode=$(echo $ipaddripapico | grep -Po '(?<="country_code":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

usercurrency=$(echo $ipaddripapico | grep -Po '(?<="currency":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

userlanguage=$(echo $ipaddripapico | grep -Po '(?<="languages":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

usercalling=$(echo $ipaddripapico | grep -Po '(?<="country_calling_code":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')

banner

printf "\e[0m\n"

printf "\e[0m\n"

printf "  \e[0m\e[1;93m  Ip Address    \e[0m\e[1;96m:\e[0m\e[1;92m   $userip\e[0m\n"

printf "  \e[0m\e[1;93m  City          \e[0m\e[1;96m:\e[0m\e[1;92m   $usercity\e[0m\n"

printf "  \e[0m\e[1;93m  Region        \e[0m\e[1;96m:\e[0m\e[1;92m   $useregion\e[0m\n"

printf "  \e[0m\e[1;93m  Country       \e[0m\e[1;96m:\e[0m\e[1;92m   $usercountry\e[0m\n"

printf "\e[0m\n"

printf "  \e[0m\e[1;93m  Latitude      \e[0m\e[1;96m:\e[0m\e[1;92m    $userlat\e[0m\n"

printf "  \e[0m\e[1;93m  Longitude     \e[0m\e[1;96m:\e[0m\e[1;92m    $userlon\e[0m\n"

printf "  \e[0m\e[1;93m  Time Zone     \e[0m\e[1;96m:\e[0m\e[1;92m    $usertime\e[0m\n"

printf "  \e[0m\e[1;93m  Postal Code   \e[0m\e[1;96m:\e[0m\e[1;92m    $userpostal\e[0m\n"

printf "\e[0m\n"

printf "  \e[0m\e[1;93m  ISP           \e[0m\e[1;96m:\e[0m\e[1;92m   $userisp\e[0m\n"

printf "  \e[0m\e[1;93m  ASN           \e[0m\e[1;96m:\e[0m\e[1;92m   $userasn\e[0m\n"

printf "\e[0m\n"

printf "  \e[0m\e[1;93m  Country Code  \e[0m\e[1;96m:\e[0m\e[1;92m   $usercountrycode\e[0m\n"

printf "  \e[0m\e[1;93m  Currency      \e[0m\e[1;96m:\e[0m\e[1;92m   $usercurrency\e[0m\n"

printf "  \e[0m\e[1;93m  Languages     \e[0m\e[1;96m:\e[0m\e[1;92m   $userlanguage\e[0m\n"

printf "  \e[0m\e[1;93m  Calling Code  \e[0m\e[1;96m:\e[0m\e[1;92m   $usercalling\e[0m\n"

printf "\e[0m\n"

printf "  \e[0m\e[1;93m  GOOGLE Maps   \e[0m\e[1;96m:\e[0m\e[1;94m  https://maps.google.com/?q=$userlat,$userlon\e[0m\n"

sleep 5

printf "\e[0m\n"

printf "  \e[0m\e[1;91m[\e[0m\e[1;97m01\e[0m\e[1;91m]\e[0m\e[1;93m Return To Main Menu\e[0m\n"

printf "  \e[0m\e[1;91m[\e[0m\e[1;97m02\e[0m\e[1;91m]\e[0m\e[1;93m Exit\e[0m\n"

printf "\e[0m\n"

read -p $'  \e[1;31m>>\e[0m\e[1;96m  \en' mainorexit2

if [[ $mainorexit2 == 1 || $mainorexit2 == 01 ]]; then

banner

menu

elif [[ $mainorexit2 == 2 || $mainorexit2 == 02 ]]; then

printf "\e[0m\n"

printf "\e[0m\n"

exit 1

else

printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"

sleep 1

banner

menu

fi

}

iplogger() {

    

    termux-open-url https://iplogger.org/

    mainorexit1

if [[ $mainorexit1 == 1 || $mainorexit1 == 01 ]]; then

banner

menu

elif [[ $mainorexit1 == 2 || $mainorexit1 == 02 ]]; then

printf "\e[0m\n"

printf "\e[0m\n"

exit 1

else

printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"

sleep 1

banner

menu

fi

}

banner

menu
