#!/bin/bash

create_directory(){
mkdir demo
}

if ! create_directory; then

	echo "the code is exiting because there's already a directory created "
	exit 1
fi

echo "the code is running because there was no error or if it wasn't handled"
