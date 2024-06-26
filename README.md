# Local Minio
A collection of scripts to run Minio using Docker

## Create a .env file
```bash
MINIO_ROOT_USER=<REPLACEME>
MINIO_ROOT_PASSWORD=<REPLACEME>
```

## Expected volumes
Bucket data will be mounted to `/data/minio`

Certificate volumes will be mounted to `/data/certs/minio`

## Start Minio
This will spin up a single `minio1` container
```bash
source start-minio.sh
```

Check the container is up
```bash
docker ps
```

Check for logs
```bash
docker logs minio1
```

Test the Minio endpoint
```bash
curl --insecure https://localhost:9001/
```
