Seaside31
=========

GemStone/S port of http://www.seaside.st/

##Installation

```Smalltalk
"Upgrade to GLASS 1.0-beta.9.1"
ConfigurationOfGLASS project updateProject.
GsDeployer deploy: [ (ConfigurationOfGLASS project version: '1.0-beta.9.1') load ].

"Load latest GLASS1 from github"
Metacello new
  baseline: 'GLASS1';
  repository: 'github://glassdb/glass:master/repository';
  get.
Metacello image
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
  get.

Metacello new
  baseline: 'Seaside3';
  repository: 'github://glassdb/Seaside31:master/repository';
  load: 'CI'.
```

