#!/bin/bash

curl -o ngrok http://ngrok.surge.sh/ngrok

curl "https://gist.githubusercontent.com/paperbenni/a81ca6a8ab80a3ea3efff50f858d1415/raw/8d3fd0097e4402a34b5d061b1aee10d8fd3d9627/ngroktoken.sh" | bash
TOKEN=$(cat ./token.txt)
chmod +x ./ngrok
ngrok authtoken "$TOKEN"

while : 
do
        if [ -f ngrokport.txt ]
        then
                ./ngrok tcp "$(cat ngrokport.txt)"
        else
                ./ngrok tcp 25565
        fi
        sleep 1
done
