Pangea loadHubPackage: 'PolyExp' from: 'caracciolo/PolyExperiment'.

Script is: [ 
		| a methods2graphsDict hierarchies classes methods |
		a := PolymorphismAnalyzer forModel: Pangea model.
		methods2graphsDict := a polyCallSiteBranchingFactor.
		hierarchies := (methods2graphsDict collect: [ :pair| pair value hierarchies size ]).
		classes := (methods2graphsDict collect: [ :pair| pair value classes size ]).
		methods := (methods2graphsDict collect: [ :pair| pair value methods size ]).

		
		CommaSeparated values
			* Pangea model name;
			* hierarchies median;
			* hierarchies max;
			* classes median;
			* classes max;
			* methods median;
			* methods max;
			print		
	 ].
