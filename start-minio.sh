#!/bin/sh
docker run \
   -p 9000:9000 \
   -p 9001:9001 \
   -d \
   --user $(id -u):$(id -g) \
   --name minio1 \
   --env-file=./.env \
   -v /data/minio:/data \
   -v /data/certs/minio:/opts/certs \
   --restart unless-stopped \
   quay.io/minio/minio:RELEASE.2024-06-06T09-36-42Z server /data --console-address ":9001" --certs-dir "/opts/certs"
