￼
Script is: [
  |hierarchies totalDepth |
  hierarchies := 0.
  totalDepth := 0.
  Pangea model allClassHierarchyRoots do:
  [:each|
      totalDepth := totalDepth +
        each subclassHierarchyGroup size.
      hierarchies := hierarchies + 1
  ].
  CommaSeparated values
    * Pangea model name;
    * (totalDepth / hierarchies);
    print.
].
