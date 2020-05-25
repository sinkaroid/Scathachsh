#!/bin/bash

begin=$(date +"%s")
echo "${GREEN}[yande.re stealer] / [-sin]"

echo "tags/allias:"
read -r kode
echo "count:"
read -r count
echo -e "reading source for /${GREEN}$kode ..
${WHITE}"
var="${kode}"
json="cat ${kode}.html"
echo ${GREEN}$var

mkdir -pv "./res/yander~${var}" 
#do

cd "./res/yander~${var}";

#cf issues
wget --page-requisites --span-hosts -O ${kode}.html "https://yande.re/post.json?limit=${count}&tags=${kode}"; 

${json} | grep -o '"file_url":"[^"]*' | sed 's/"file_url":"//g' > links.txt; 
wget -i links.txt # -i $argv = process
rm links.txt ${kode}.html