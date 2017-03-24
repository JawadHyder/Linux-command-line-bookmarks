#!/bin/bash

if [ "$1" = "" ]; then
	echo "Please tell nicname like: goto NICNAME_HERE"
else
	DB_DIR="${HOME}/.nameit"

	RECORD_FILE="${DB_DIR}/${1}";

	if [ ! -f "${RECORD_FILE}" ]; then
		echo "No such nicname record."
	else
		#echo $RECORD_FILE

		GOTO=$(<$RECORD_FILE)

		echo "Going to ${GOTO}"

		cd $GOTO
	fi
fi
