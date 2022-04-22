#!/bin/bash

### LOAD ENV CONFIG
source env.sh

### CREATE USER FONTS DIRECTORY
cd
mkdir .fonts
cd .fonts

### COPY COMPRESSED FONTS FILES
cp ../${TEMPDIR}/fonts/*.zip .

### EXTRACT FILES
for FILE in "*.zip"; do
    unzip ${FILE}
done

### REMOVE ZIP FILES
rm -f *.zip

### RELOAD FONT CACHE
fc-cache -vf
