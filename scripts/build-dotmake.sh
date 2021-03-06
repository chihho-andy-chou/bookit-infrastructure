#!/bin/bash

echo 'Please fill in the config settings to store in your .make'
echo
read -p 'Domain: ' domain
read -p 'AWS SSH keyname: ' keyname
read -p 'Owner of riglet: ' owner
read -p 'AWS Profile: ' profile
read -p 'Project: ' project
read -p 'AWS region: ' region
read -p 'AWS Certificate Manager GUID: ' domain_guid
echo

cat << EOF > .make
DOMAIN = ${domain}
KEY_NAME = ${keyname}
OWNER = ${owner}
PROFILE = ${profile}
PROJECT = ${project}
REGION = ${region}
DOMAIN_CERT = ${domain_guid}
EOF

echo 'Saved .make!'
echo
