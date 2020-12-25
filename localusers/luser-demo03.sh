#!/bin/bash
echo "Your UID is ${UID}"
UID_TO_TEST_FOR='1000'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then 
	echo "Your UID does not match ${UID_TO_TEST_FOR}."
	exit 1
