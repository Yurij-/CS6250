#!/bin/bash

# submit.sh <output folder>
# collects output from wrapper per submission specs
# Nam Pho

if [ "$#" -eq 0 ]; then
    echo "submit.sh <output folder>"
    exit
fi

if [ -d $1 ]; then
    for i in $(ls -d $1/n[[:digit:]]); do
	re="^.*/n([[:digit:]])+[/]{0,1}$"
	if [[ $i =~ $re ]]; then
	    h=${BASH_REMATCH[1]}
	    echo "LOG: processing host $h"

	    if [[ -s $i/bwm.txt ]]; then
		#echo "LOG: cp -v $i/bwm.txt $1/bwm$h.txt"
		cp -v $i/bwm.txt $1/bwm$h.txt
		else
		echo "ERROR: problem with $i/bwm.txt"
	    fi
	fi
    done

    else
    echo "ERROR: $1 doesn't exist?"
fi

