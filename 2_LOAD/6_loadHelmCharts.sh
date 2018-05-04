#!/bin/bash

#bx pr login --skip-ssl-validation -a https://192.168.27.199:8443

for filename in ./helm-repos/*.tgz; do
	echo "Filename: $filename"
	bx pr load-helm-chart --archive $filename
done
