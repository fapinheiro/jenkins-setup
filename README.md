# Jenkins Setup

A Jenkins setup with a master and slave to be able to develop and test Jenkins shared libraries and parallel process locally

# Requirements

- Git 2.16.2.windows.1
- Java OpenJDK 11
- Docker Desktop for Windows 2.3.0.3

# Run

Just type .\Start.bat

# Reference for Docker-Compose Commands

## Docker Compose Run
docker-compose up -d

docker-compose stop serviceName

docker-compose start serviceName

docker-compose down

## Docker Compose Debug
docker-compose logs -f serviceName

# Docker Compose Status
docker-compose ps
