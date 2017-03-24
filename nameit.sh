#!/bin/bash


if [ "$1" = ""  ]; then
	echo "Please specify a nicname like this: nameit NICNME_HERE"
	exit 1
fi

DB_DIR="${HOME}/.nameit"

if [ "$1" = "-r" ]; then
	if [ "${1}" = "" ]; then
		echo "Please specify nicname to remove."
		exit 0;
	fi

	if [ ! -f "${DB_DIR}/${1}" ]; then
		echo "No such nicname found."
		exit 0
	fi

	rm "${DB_DIR}/${1}"
	echo "Removed nicname."
	exit 0
fi

CURRENT_DIR="$(pwd)"

if [ ! -d $DB_DIR ]; then
	mkdir "${DB_DIR}"
fi

STORE_FILE="${DB_DIR}/${1}"
echo $CURRENT_DIR > $STORE_FILE

echo "Name saved... ${1} --> ${CURRENT_DIR}"

exit 0
#read name

