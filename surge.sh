#!/bin/bash

echo "running surge.sh"

( surge . ngrok.surge.sh ) || ( sudo npm install -g surge && surge . ngrok.surge.sh ) || ( sudo apt update && sudo apt install nodejs && sudo npm install -g surge && surge . ngrok.surge.sh )
