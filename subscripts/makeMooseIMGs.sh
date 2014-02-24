#!/bin/bash  

PangeaRepo='http://www.smalltalkhub.com/mc/SCG/Pangea/main'
dataFolder=`pwd`"/2.0/data"
toolsFolder=`pwd`"/2.0/tools"

makeImages(){
	QCversion=$1 
	QCname=$2
	ExtrName=$3
	
	if [ -z $2 ]; 
	then
		moose="$toolsFolder/image/moose.image"
	fi	
	
	if [-z $3]; then
		if [[ "$unamestr" == 'Linux' ]]; then
		   vm="$toolsFolder/pharo-linux/pharo  -vm-display-null "
		elif [[ "$unamestr" == 'Darwin' ]]; then
		   vm="$toolsFolder/pharo-mac/Pharo.app/Contents/MacOS/Pharo --headless --memory 1536m"
		fi
	fi	
	
	
	$vm $moose config $PangeaRepo ConfigurationOfPangea --install 
	
	
	srcFolders=`find $dataFolder -type d -path "*/src" | grep -v /src/ | grep -v sources/docs/`
	
	for f in $srcFolders; do
		
		sourcePath=$f
		mseFileName=`echo $sourcePath | awk -F"/" '{print $(NF-1)}' `
		mseFile=`find $dataFolder  | grep mseFileName".mse" | grep $ExtrName`
		imgDest=`echo $mseFile | sed s/MSE.*//`
		imgDest=$imgDest"images/"
		
		
		#TODO: parametrize model.mse file name in buildPreLoaded.st
		echo "$vm $moose PangeaLoad --scr=$sourcePath --mse=$mseFile --imgDest=$imgDest "
		   

			
		#./verveinej2/verveinej.sh $source
		#$infamix -lang java -path $source -mse $target
			
		
	done	
}



makeImages "QC-20120401r" "verveinej11"