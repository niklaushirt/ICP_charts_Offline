#!/bin/bash


for filename in ./docker-images/*.tar.gz; do
	echo "Filename: $filename"
	tar xf $filename -O | docker load
done
