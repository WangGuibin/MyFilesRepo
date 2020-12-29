# !/bin/sh

MATCH_Prefix='https://github.com/'
URL_Prefix='https://cdn.jsdelivr.net/gh/'
URL=$1
RES=${URL_Prefix}${URL: ${#MATCH_Prefix}}
FILE_URL=${RES%blob*}${RES#*blob/*/}
echo $FILE_URL
open -a "/Applications/Safari.app" $FILE_URL