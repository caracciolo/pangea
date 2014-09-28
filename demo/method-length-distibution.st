Script is: [
  | interestingClasses sizes |
  interestingClasses := (Pangea model
    allModelClasses reject: [ :e|e
    isAnonymousClass ]).
  sizes := Bag new.
  interestingClasses allMethods do:
  [ :met|
    sizes add: met name numberOfCamelCaseWords
  ].
  CommaSeparated values
    * (Pangea model name);
    * ((1 to: 20) collect: [:e | sizes
    occurrencesOf: e]);
  print. 
]