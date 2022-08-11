#!/bin/bash

if [ $1 == "-h" ]; then
	echo -e "Comandos:\n\n\t-d, --date: para listagem de diretório com data e hora"
	exit
fi

if [ $1 == "--date" ] || [ $1 == "-d" ]; then
	ls -lt | sed '1d' |head -n $2 | cut -d ' ' -f6-99
else
	ls -t | head -n $1
fi
