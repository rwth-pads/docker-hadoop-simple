set windows-shell := ["pwsh", "-c"]

image:
    docker build . -t leahtgu/hadoop-base-img:latest

up:
    docker compose up