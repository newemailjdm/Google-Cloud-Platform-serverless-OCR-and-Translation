#!/bin/bash

clear;

log_file="`pwd`/upload.log";
for file in /home/user/Pictures/*; do
    now=$(date)
    echo "$(basename "$file")";
    gsutil cp /home/user/Pictures/$(basename "$file") gs://memopics;
    echo "$(basename "$file") uploaded at $now "  >> $log_file;
    sleep 1;
done




