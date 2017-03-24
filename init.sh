#!/bin/bash

if [ -f /bin/nameit ] || [ -f /bin/goto ]; then
	echo "Cannot initialize. /bin/nameit or /bin/goto command already exist"
	exit 0
fi

sudo cp ./nameit.sh /bin/nameit
sudo cp ./goto.sh /bin/goto

sudo cp ./nameit_autocomplete /etc/bash_completion.d/

sudo chmod +x /bin/nameit
sudo chmod +x /bin/goto

echo "Initializing.... Now you can use nameit and goto commands."
echo "Please run this command to complete initialization."
echo "alias goto=\". goto\""
