
Script is: [ 
		| a analyzer |

		Pangea loadHubPackage: 'PolyExp' from: 'PolyExperiment'.
		analyzer := (Smalltalk at: #PolymorphismAnalyzer). 
		a := analyzer forModel: Pangea model.
		CommaSeparated values
			* Pangea model name;
			* Pangea model allModelClasses size printString;
			* a allPolyClasses size printString;
			* Pangea model allModelMethods size printString;
			* a allPolyMethods size printString;
			print.		
	 ].