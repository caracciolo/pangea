
Script is: [

	
	|transcript scriptWindow vert left |
	vert := 160.
	left := 200.
	
	transcript := (World submorphs
  		detect: [ :m | m model = Transcript ]
  		ifNone: [ Transcript open ]
	).
	transcript bounds: (Rectangle origin: (600+left)@vert extent: 400@400).
	transcript setLabel: 'Results'.
	
	scriptWindow := (World submorphs
  		detect: [ :m | (m model isKindOf: Workspace) and: [m label = 'Pangea Script']]
		ifNone: [ Workspace openContents: '' label: 'Pangea Script']).
		
	scriptWindow bounds: (Rectangle origin: left@vert extent: 400@400).		
	
].