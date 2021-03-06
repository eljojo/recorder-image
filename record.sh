#!/bin/bash
mkdir -p /tmp/record/

while true; do
  rm -rf /tmp/record/record.aac
  START_RECORD=$(date +%s)
  ffmpeg  -hide_banner -nostats -loglevel error -i "$RECORD_URL" -acodec copy /tmp/record/record.aac && aws s3 cp /tmp/record/record.aac "s3://$RECORD_BUCKET/$RECORD_FOLDER/$START_RECORD.aac"
  sleep 1
done
