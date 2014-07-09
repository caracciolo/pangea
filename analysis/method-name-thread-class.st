￼
Script is: [
   | invocations methods threadMethods
    threadMethodNames |
   invocations := Pangea model allInvocations.
   methods := invocations collect: [ :e |
      e candidates first
].
   threadMethods := methods select: [ :e |
   e parentType mooseName = #java::lang::Thread
   ].
   threadMethodNames := threadMethods
      collect: [ :e |
         (e mooseName subStrings: ’.’) second
      ].
   threadMethodNames
      do: [ :e | Output print: e; cr ]
]