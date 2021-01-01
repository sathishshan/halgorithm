#!/bin/bash

r="\033[31m"
g="\033[32m"
bbg="\033[44m"
n="\033[0m"


echo "[+] Avaliable Algorithms"
echo "[+]" "MD5 |" "SHA1 |" "SHA-256 |" "SHA-384 |" "SHA-512"
echo

while [ -z $hash ]; do
echo -n  "Enter the hash value: "
read hash
done

count=$(echo -n $hash | wc -m)

if [ "$count" -eq 32 ]; then
        echo -e "It's surely a ${g}MD5${n} hash and possible for ${r}MD4${n} also."

elif [ "$count" -eq 40 ]; then
        echo -e "It's a ${g}SHA1${n} hash"

elif [ "$count" -eq 64 ]; then
        echo -e "It's a ${g}SHA-256${n} hash"

elif [ "$count" -eq 96 ]; then
        echo -e "It's a ${g}SHA-384${n} hash"

elif [ "$count" -eq 128 ]; then
        echo -e "It's a ${g}SHA-512${n} hash"

else
        echo -e "${bbg}Unknown Algorithm ${n}"
        exit
fi
