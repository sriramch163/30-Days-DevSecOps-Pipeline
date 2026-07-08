#!/bin/bash

mkdir -p backup

docker run --rm \
-v flask-data:/volume \
-v $(pwd)/backup:/backup \
busybox \
tar czf /backup/flask-data-backup.tar.gz /volume

echo "Backup Completed"
