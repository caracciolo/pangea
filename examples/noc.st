CodeImporter evaluateFileStream:  (FileStream readOnlyFileNamed: '/Users/mircea/projects/pangea-old/analysis/Pangea-Tools.st').

"Print the number of classes in the system"
Script is: [ 

	CommaSeparated values
		- PangeaModel systemName;
		- PangeaModel allModelClasses  size printString;
		print.
	
].