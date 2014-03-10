UnixProcess stdOut 
	nextPutAll: MooseModel root first name; 
	nextPutAll: ', ';
	nextPutAll: (MooseModel root first allModelClasses size) asString;
	cr;lf.

Smalltalk snapshot: false andQuit: true.

