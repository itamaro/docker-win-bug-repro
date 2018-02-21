@echo off

@echo Preparing node installer tar
python prep.py

@echo Building Docker image
docker build -t win-docker-bug-repro .

