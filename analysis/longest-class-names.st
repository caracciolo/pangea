interestingClasses := (MooseModel root first allModelClasses 
	reject: [ :e|e isAnonymousClass ]).
	"reject: [:e| '*Test*' match: e name]."


wordCount := [:string|
	words := 1.
	1 to: (string size -1) do: [ :i|
	((string at: i) isLowercase and: [ (string  at: i+ 1) isUppercase]) ifTrue: [ 
		words := words + 1 ] 
	].
	words
	].


"Initialize the top10"
top10 :=  SortedCollection sortBlock: [:a :b| (wordCount value: a name) > (wordCount value: b name)].
interestingClasses do: [ :e| top10 add: e ].


"Print out the results"
((top10 copyFrom: 1 to: 10) )do: [ :cl |
	UnixProcess stdOut 
		nextPutAll: MooseModel root first name;
		nextPutAll: ', ';
		nextPutAll: cl name;
		nextPutAll: ', ';
		nextPutAll: (wordCount value: cl name) printString;
		nextPutAll: ', ';
		nextPutAll: cl numberOfLinesOfCode printString;
		nextPutAll: ', ';
		nextPutAll: cl sourceAnchor fileName;
		cr;lf.
		].

Smalltalk snapshot: false andQuit: true.
