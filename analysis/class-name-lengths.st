Script is: [ 
	| interestingClasses wordCount sizes |
	interestingClasses := (Pangea model allModelClasses reject: [ :e|e isAnonymousClass ]).

	sizes := Bag new.
	interestingClasses do: [ :cl|
		sizes add: cl name numberOfCamelCaseWords 
	].

	CommaSeparated values
		* (Pangea model name);
		* ((1 to: 30) collect: [:e | sizes occurrencesOf: e]);
		print.
		
 ]