#!/bin/bash -x
#
#  GLASS test driver for running GLASS builds on travisCI ... for now the code
#    is hosted elsewhere, but ultimately the packages will be managed here.
#
#  This boyo generates an old-style configuration load script similar to those 
#    used by GemTools and builderCI in before_gemstone.sh, but we're testing
#    a barebones load and test so no need for Metacello Scripting API, to be
#    pre-installed.
#
#      -verbose flag causes unconditional transcript display
#
# Copyright (c) 2013 VMware, Inc. All Rights Reserved <dhenrich@vmware.com>.
#

OUTPUT_PATH="${PROJECT_HOME}/tests/travisCI.st"

cat - >> $OUTPUT_PATH << EOF
| gitPath |
Transcript cr; show: 'travis--->${OUTPUT_PATH}'.
EOF

if [ "${GLASS}x" != "x" ] ; then
cat - >> $OUTPUT_PATH << EOF
"Load GLASS1 from glassdb repository"

Metacello image
  baseline: 'GLASS1';
  get.
Metacello image
  baseline: 'GLASS1';
  load.
EOF
fi

cat - >> $OUTPUT_PATH << EOF
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

"Load latest GLASS1"
 [ Metacello new
    baseline: 'GLASS1';
    repository: 'github://glassdb/glass:master/repository';
    load.
  ] on: Warning
    do:[:ex | Transcript show: ex greaseString. ex resume].

"Explicitly load latest Grease configuration, since we're loading the #bleeding edge"

Metacello new
  configuration: 'Grease';
  repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
  get.

"Load Seaside31 from git repository"

Metacello new
  baseline: 'Seaside3';
  repository: 'filetree://', gitPath, '/Seaside31/repository';
  load: #('CI' 'Zinc' 'FastCGI').

TravisCIHarness
  value: #( 'BaselineOfSeaside3' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

EOF

cat $OUTPUT_PATH

$BUILDER_CI_HOME/testTravisCI.sh "$@"
 
