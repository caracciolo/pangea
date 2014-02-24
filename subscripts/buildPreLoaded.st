| stream model |
model := MooseModel new.
stream:= MultiByteFileStream newFrom:(FileStream readOnlyFileNamed: '../model.mse').
model name:(FileDirectory baseNameFor: stream localName).
model importFromMSEStream: stream.
model size > 0 ifTrue: [ model install.].
	
model rootFolder:'../src'.



"FileDirectory default copyFile:
(FileStream readOnlyFileNamed:'moose.changes' ) toFile:(FileStream forceNewFileNamed:'moosePreloaded.changes').
SmalltalkImage current saveAs:'moosePreloaded'."

WorldState addDeferredUIMessage: [	SmalltalkImage current snapshot: true andQuit: true ].