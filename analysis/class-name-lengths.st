Script is: [ 
	| interestingClasses wordCount sizes |
	interestingClasses := (Pangea model allModelClasses reject: [ :e|e isAnonymousClass ]).


	wordCount := [:string| |words|
		words := 1.
		1 to: (string size -1) do: [ :i|
		((string at: i) isLowercase and: [ (string  at: i+ 1) isUppercase]) ifTrue: [ 
			words := words + 1 ] 
		].
		words
		].


	
	sizes := Bag new.
	interestingClasses do: [ :cl|
		sizes add: (wordCount value: cl name).
	].
	Output print: Pangea model name, ','.
	1 to: 30 do: [ :i| 
			Output print: ((sizes occurrencesOf: i) printString).
			Output print: ','.
		].
	Output cr.
 ]
