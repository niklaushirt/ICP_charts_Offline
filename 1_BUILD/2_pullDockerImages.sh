#!/bin/bash

echo "Pulling repositories";
local images="";
while IFS='' read -r line || [[ -n "$line" ]]; do
	echo "pulling image $line"
      	docker pull $line
      	images="$images $line"
done < "$1"
