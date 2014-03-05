#!/bin/bash

srcFolder=$1
trgFile=$2
runFolder=$3
currentDir=`pwd`
runCommand="$currentDir/verveine.extractor.java/verveinej.sh -Xmx2500m -- $srcFolder"

(cd "$runFolder" && $runCommand )

mv "$runFolder/output.mse" $trgFile


