#!/bin/bash

PROGNAME="$(basename $0)"

error_exit()
{ 
  echo "${PROGNAME}: ${1:-"Unknown Error"}" 1>&2
  exit 1 
}

if [ $# = 0 ] ; then echo "Usage: app-template.sh <app-name>" >&2 ; exit 1 ; fi

app_name=$1

wget -q "https://github.com/GaborSzabo7/app-template/archive/main.zip" || error_exit "$LINENO: Failed to fetch app-template from Github" 
unzip -q main.zip
rm -f main.zip
mv app-template-main $app_name
cd $app_name
find ./ -type f -exec sed -i "s/template/$app_name/" {} \;
cd src/main/java/hu/gaszabo
mv template $app_name
