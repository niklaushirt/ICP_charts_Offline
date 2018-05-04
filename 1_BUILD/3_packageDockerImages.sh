#!/bin/bash

echo "Pulling repositories";
local images="";
while IFS='' read -r line || [[ -n "$line" ]]; do
	echo "pulling image $line"
      	#docker pull $line


				#sed 's/\\/-/g' "$line" "$filename"
				filename=${line/\//-}
				filename=${filename/:/-}
				filename=${filename/./-}

				echo "Saving image $line to $filename"

				# save all appended container names within images into a .tar
				docker save -o ICP-$filename.tar $line

				echo "Compressing image $line"
				# compress it into gz
				tar zcf ICP-$filename.tar.gz ICP-$filename.tar

				mv ICP-$filename.tar.gz ../2_LOAD/docker-images/

				# delete the .tar file
				rm -f ICP-$filename.tar


      	images="$images $line"
done < "$1"

echo -e "\nGenerating x86_64 offline package, this may take a while.\n"

echo $images;
