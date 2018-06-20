#!/bin/bash

clear;

log_file="`pwd`/upload.log";
for file in /home/a34478/Pictures/Memoir/*; do
    now=$(date)
    echo "$(basename "$file")";
    gsutil cp /home/a34478/Pictures/Memoir/$(basename "$file") gs://memopics;
    echo "$(basename "$file") uploaded at $now "  >> $log_file;
    sleep 1;
done




