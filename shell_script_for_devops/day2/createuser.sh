#!/bin/bash

#adding user from the input and creating user on the same name

read -p " name of the user: " username

sudo useradd -m $username

echo "new user $username added to the system "
