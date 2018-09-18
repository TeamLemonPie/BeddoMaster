#!/bin/bash
cd ..
for i in ./* ; do
	if [ -d "$i" ]; then
		cd "$i"
        if [ -d ".git" ]; then
            echo $i
		    git pull
        fi
        cd ..
	fi
done
