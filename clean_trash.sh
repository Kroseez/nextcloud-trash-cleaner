#!/bin/bash
if [[ ${1} = "" ]]; then #Enter Nextcloud users path into variable ${1} 
        echo "The root directory for cleaning is not specified. Enter the path from where we will clean:"
        read WORKDIR
else
        WORKDIR=${1}
        echo "Cleaning will be done from the catalog ${WORKDIR}"
fi


LIST=`ls -1 ${WORKDIR}`
for ELEMENT in $LIST
do
        rm -rf ${WORKDIR}/${ELEMENT}/files_trashbin/files/
        rm -rf ${WORKDIR}/${ELEMENT}/files_trashbin/versions/
done