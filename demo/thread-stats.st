Script is: [
   |  methods threadMethods threadMethodNames |
   
   methods := Pangea model allInvocations flatCollect: [ :e |
      e candidates].

   threadMethods := methods select: [ :e |
   		e belongsTo name = #Thread
   ].

	threadMethods do: [ :met|
		Output print: met signature; cr.
		 ]
]