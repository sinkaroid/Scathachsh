#!/bin/bash

begin=$(date +"%s")
echo "${GREEN}[xbooru stealer] / [-sin]"
echo '
## incorrect statement ["miyamoto musashi"],["miyamoto_musashi_(fate/grand_order)"]
## correct statement ["miyamoto_musashi+"],["miyamoto_musashi_%28fate%2fgrand_order%29+"]'

echo "tags/allias:"
read -r kode
echo "count:"
read -r count

echo -e "reading source for /${GREEN}$kode ..
${WHITE}"
var="${kode}"
json="cat ${kode}.html"
echo ${GREEN}$var

mkdir -pv "./res/xbor~${var}" 
#do

cd "./res/xbor~${var}";

#cf issues
wget --page-requisites --span-hosts -O ${kode}.html "https://xbooru.com/index.php?page=dapi&s=post&q=index&limit=${count}&tags=${kode}"; 

${json} | grep -o 'file_url="[^"]*' | sed 's/file_url="//g' > links.txt; 
wget -i links.txt # -i $argv = process
rm links.txt ${kode}.html

#length
termin=$(date +"%s")
difftimelps=$(($termin-$begin))
echo "${WHITE}$(($difftimelps / 60)) minutes and $(($difftimelps % 60)) sec. elapsed ${RED}booruscraper"