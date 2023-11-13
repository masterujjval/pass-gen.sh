#!/bin/bash
# Simple password generator using bash scripting
# using openssl library for generating strong passwords

echo "Enter the password length: "
read n

for p in $(seq 1) #increase seq to get mulitple passwords
do
    openssl rand -base64 48 | cut -c1-$n #cut from column 1 to pass len that is n
done
