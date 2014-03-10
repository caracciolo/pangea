result :=  SortedCollection sortBlock: [:a :b| a name size > b name size].
validMethods := MooseModel root first allModelMethods reject: [ :each |
	each isStub 
		or: [ ('*.*' match: each name) 
			or: [ ('test*' match: each name )
				or: [ each isConstructor ] ] ] ].

(validMethods copyFrom: 1 to: 10) do: [ :e| result add: e ].


validMethods do: [ :each |
		each name size > (result at: 10) name size ifTrue: [ 
					result removeAt: 10.
					result add: each.
				] ].
	

(result collect: #name )do: [ :name |
	UnixProcess stdOut 
		nextPutAll: MooseModel root first name;
		nextPutAll: ', ';
		nextPutAll: name;
		cr;lf.
		].

Smalltalk snapshot: false andQuit: true.
