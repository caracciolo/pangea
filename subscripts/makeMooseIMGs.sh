#!/bin/bash  


makeImages(){
	mseFolder=$1 
	moose=$2
	vm=$3
	
	if[-z $2]; then
		moose="2.0/tools/image/moose.image"
	fi	
	
	if[-z $3]; then
		if [[ "$unamestr" == 'Linux' ]]; then
		   vm="2.0/tools/pharo-linux/pharo  -vm-display-null "
		elif [[ "$unamestr" == 'Darwin' ]]; then
		   vm="2.0/tools/pharo-mac/Pharo.app/Contents/MacOS/Pharo --headless --memory 1536m"
		fi
	fi	
	
	
	
	for mse in $(ls $mseFolder); do
		
		#TODO: parametrize model.mse file name in buildPreLoaded.st
		$vm $moose buildPreLoaded.st
		   

			
		#./verveinej2/verveinej.sh $source
		#$infamix -lang java -path $source -mse $target
			
		
	done	
}



makeImages "2.0/data/QC-20120401r/models/verveinej11/MSE"