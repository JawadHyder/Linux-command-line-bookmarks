#!/bin/bash

if [ -f ${HOME}/bin/nameit ] || [ -f ${HOME}/bin/goto ]; then
	echo "Cannot initialize. ${HOME}/bin/nameit or ${HOME}/bin/goto command already exist"
	exit 0
fi

mkdir -p ${HOME}/bin &
cp ./nameit.sh ${HOME}/bin/nameit
cp ./goto.sh ${HOME}/bin/goto

sudo cp ./goto_autocomplete /etc/bash_completion.d/

chmod +x ${HOME}/bin/nameit
chmod +x ${HOME}/bin/goto

echo alias goto=". goto" >> ${HOME}/.profile

echo "Initializing.... Now you can use nameit and goto commands."
echo "If you are unable to run `goto`, please run this first:"
echo "alias goto=\". goto\""
