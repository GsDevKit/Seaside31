Seaside31
=========
Website: http://www.seaside.st/

The GemStone/S port of Seaside3.1 can be found in the gemstone3.1 branch.

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
    repository: 'github://glassdb/Seaside31:gemstone3.1/repository';
    load: 'CI'].
%
commit
```

