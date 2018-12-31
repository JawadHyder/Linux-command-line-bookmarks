#!/bin/bash

if [ -f ${HOME}/bin/nameit ] || [ -f ${HOME}/bin/goto ]; then
	echo "Cannot initialize. ${HOME}/bin/nameit or ${HOME}/bin/goto command already exist"
	exit 0
fi

cp ./nameit.sh ${HOME}/bin/nameit
cp ./goto.sh ${HOME}/bin/goto

cp ./goto_autocomplete /etc/bash_completion.d/

chmod +x ${HOME}/bin/nameit
chmod +x ${HOME}/bin/goto

echo "Initializing.... Now you can use nameit and goto commands."
echo "Please run this command to complete initialization."
echo "alias goto=\". goto\""
