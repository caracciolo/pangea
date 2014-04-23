Pangea 
	loadHubPackage: 'PolyExp' from: 'PolyExperiment'.

Script is: [ 
		| a |
	
		a := PolymorphismAnalyzer forModel: Pangea model.
		CommaSeparated values
			* Pangea model name;
			* Pangea model allModelClasses size printString;
			* a allPolyClasses size printString;
			* Pangea model allModelMethods size printString;
			* a allPolyMethods size printString;
			print.		
	 ].