#!/bin/bash  

pwd=`pwd`

makeMSE(){
	rootFolder=$1 
	extractor=$2
	outputFolder=$3
	for f in $(find . -path "*/src" -depth 8); do
		source=$f  #${f/.\//\/}
		#target=${source/\/src/}
		#target=$target"/model.mse"
		
		IFS='/' read -ra outputFile <<< "$source"
		outputFileString=${outputFile[7]}
		
		
		echo "makeMSE: "$source    
		$extractor -Xmx2500m -- $source
		mv output.mse $outputFolder""$outputFileString".mse"
			
			
		#./verveinej2/verveinej.sh $source
		#$infamix -lang java -path $source -mse $target
			
		
	done	
}

makeMSE "2.0/data/QC-20120401r" "./2.0/data/QC-20120401r/models/verveinej11/extractor/verveine.extractor.java/verveinej.sh" "2.0/data/QC-20120401r/models/verveinej11/MSE/"