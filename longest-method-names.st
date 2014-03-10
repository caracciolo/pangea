"Filter out uninteresting methods (e.g. test cases, constructors)"
interestingMethods := MooseModel root first allModelMethods 
	reject: [ :each |
		each isStub 
			or: [ ('*.*' match: each name) 
				or: [ ('test*' match: each name )
					or: [ each isConstructor ] ] ] ].

"Initialize the top10"
top10 :=  SortedCollection sortBlock: [:a :b| a name size > b name size].
(interestingMethods copyFrom: 1 to: 10) do: [ :e| top10 add: e ].

"Iterate over all the methods always keeping the interesting ones in top"
interestingMethods do: [ :each |
		each name size > (top10 at: 10) name size ifTrue: [ 
					top10 removeAt: 10.
					top10 add: each.
				] ].
	
"Print out the results"
(top10 collect: #name )do: [ :name |
	UnixProcess stdOut 
		nextPutAll: MooseModel root first name;
		nextPutAll: ', ';
		nextPutAll: name;
		cr;lf.
		].

Smalltalk snapshot: false andQuit: true.
