Pangea loadHubPackage: 'PolyExp' from: 'caracciolo/PolyExperiment'.

Script is: [ 
		| a analyzer |

		analyzer := (Smalltalk at: #PolymorphismAnalyzer). 
		a := analyzer forModel: Pangea model.
		CommaSeparated values
			* Pangea model name;
			* Pangea model allModelClasses size;
			* a allPolyClasses size;
			* Pangea model allModelMethods size;
			* a allPolyMethods size;
			print.		
	 ].