Seaside31
=========
The framework for developing sophisticated web applications in Smalltalk. 
See more at http://www.seaside.st/

The master branch of this repository is a copy of the master repository at http://www.smalltalkhub.com/mc/Seaside
The Gemstone port can be found in the Gemstone3.1 branch.

##Build Status
 - [![gemstone3.1 branch:](https://travis-ci.org/glassdb/Seaside31.png?branch=gemstone3.1)](https://travis-ci.org/glassdb/Seaside31) gemstone3.1 branch
 - [![master branch (pharo/squeak):](https://travis-ci.org/glassdb/Seaside31.png?branch=master)](https://travis-ci.org/glassdb/Seaside31)  master branch (pharo/squeak)

##Installation

```Smalltalk
run
ConfigurationOfGLASS project updateProject.
GsDeployer deploy: [ 

  "Upgrade to GLASS 1.0-beta.9.1"
  (ConfigurationOfGLASS project version: '1.0-beta.9.1') load].
%
commit

run
GsDeployer deploy: [ 

  "Load latest GLASS1 from github"
  Metacello new
    baseline: 'GLASS1';
    repository: 'github://glassdb/glass:master/repository';
    load.

  "Explicitly load latest Grease configuration, since we're loading the #bleeding edge"

  Metacello new
    configuration: 'Grease';
    repository: 'http://www.smalltalkhub.com/mc/Seaside/MetacelloConfigurations/main';
    get.

  "Load Seaside31"
  Metacello new
    baseline: 'Seaside3';
    repository: 'github://glassdb/Seaside31:master/repository';
    load: 'CI'].
%
commit
```
