| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].


"Load Seaside31 from git repository"
Metacello new
  baseline: 'Seaside3';
  repository: 'filetree://', gitPath, '/Seaside31/repository';
  load: 'CI'.

TravisCIHarness
  value: #( 'BaselineOfSeaside3' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

EOF

cat $OUTPUT_PATH

$BUILDER_CI_HOME/testTravisCI.sh "$@"
 
