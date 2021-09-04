#!/bin/bash
source=$1
dest=$2
function fileexist() {
          if [ -f backup.tar.gz ]; then
          exit
          fi
          }
 function filebackup(){
          tar -xtf backup.tar $1
          gzip backup.tar
          mv backup.tar.gz §2
          }
fileexist
filebackup
