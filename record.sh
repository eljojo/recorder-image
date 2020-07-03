#!/bin/bash
while true; do
  START_RECORD=$(date +%s)
  ffmpeg -hide_banner -i "$RECORD_URL" -acodec copy - | aws s3 cp - "s3://$RECORD_BUCKET/$RECORD_FOLDER/$START_RECORD.aac" || sleep 1
done
