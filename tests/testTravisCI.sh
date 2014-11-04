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
"Upgrade Grease and Metacello"
Gofer new
  package: 'GsUpgrader-Core';
  url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
  load.
(Smalltalk at: #GsUpgrader) upgradeGLASS1.
EOF
fi

cat - >> $OUTPUT_PATH << EOF
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

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
 
