#!/bin/bash
curl "https://gist.githubusercontent.com/paperbenni/a81ca6a8ab80a3ea3efff50f858d1415/raw/4c4223f3520ed68ffc5a165b17e7cc03d92f3cca/ngroktoken.txt" > ./ngroktokens.txt
shuf -n 1 ./ngroktokens.txt > token.txt
rm ./ngroktokens.txt
cat token.txt
echo "TOKEN set"
