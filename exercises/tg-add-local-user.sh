#!/bin/bash
# Make sure the script is being executed with superuser privileges.
if [[ "${UID}" -ne 0 ]]
then
  echo "You must run this script as root"
  exit 1
fi
# Get the username (login).
read -p "username" username
# Get the real name (contents for the description field).
read -p "realname" realname
# Get the password.
read -p "password" password
# Create the user with the password.
echo ${username}
echo ${realname}
echo ${password}
useradd -c ${realname} -m ${username}
# Check to see if the useradd command succeeded.
if [[ $? -ne 0 ]]
then
  echo "didn't succeeded in creating new user"
  exit 1
fi
# Set the password.
echo -e "${username}:${password}" | chpasswd
# Check to see if the passwd command succeeded.
if [[ "${?}" -ne 0 ]]
then
  echo 'The password for the account could not be set.'
  exit 1
fi
# Force password change on first login.
passwd -e ${username}
# Display the username, password, and the host where the user was created.
echo
echo 'username:'
echo "${username}"
echo
echo 'password:'
echo "${password}"
echo
echo 'host:'
echo "${HOSTNAME}"
exit 0
