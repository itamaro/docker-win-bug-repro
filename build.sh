#!/bin/bash

echo "Preparing the node-installer tar"
./prep.py

echo "Building Docker image"
docker build -t win-docker-bug-repro .
