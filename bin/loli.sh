#!/bin/bash

begin=$(date +"%s")
echo "${GREEN}[lolibooru stealer] / [-sin]"

echo "tags/allias:"
read -r kode
echo "count:"
read -r count

echo -e "reading source for /${GREEN}$kode ..
${WHITE}"
var="${kode}"
json="cat ${kode}.html"
kuproy="cat links.txt"
echo ${GREEN}$var

mkdir -pv "./res/lolibooru~${var}" 
#do

cd "./res/lolibooru~${var}";

#cf issues
wget --page-requisites --span-hosts -O ${kode}.html "https://lolibooru.moe/post.json?limit=${count}&tags=${kode}"; 

${json} | grep -o '"file_url":"[^"]*' | sed 's/"file_url":"//g' > links.txt; 
${kuproy} | sed 's/\\//g' > x.txt

wget -i x.txt # -i $argv = process
rm links.txt ${kode}.html x.txt