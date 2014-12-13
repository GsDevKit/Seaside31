Seaside31
========= 
The framework for developing sophisticated web applications in Smalltalk. 
See more at http://www.seaside.st/

## Loading into Gemstone

1. Upgrade to the latest version of Metacello and Grease using [GsUpgrader](https://github.com/GsDevKit/gsUpgrader#gsupgrader-):
  ```Smalltalk
  Gofer new
    package: 'GsUpgrader-Core';
    url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
    load.
  (Smalltalk at: #GsUpgrader) upgradeGrease.
  ```
  
2. Install Seaside 3.1:

  Install the latest commit from the master branch:
  ```Smalltalk
  GsDeployer deploy: [
    Metacello new
      baseline: 'Seaside3';
      repository: 'github://GsDevKit/Seaside31:gs_master/repository';
      onLock: [:ex | ex honor];
      load: 'CI' ].
  ```

  Install a particular version, e.g. 3.1.3 (see [Releases](https://github.com/GsDevKit/Seaside31/releases) for a list of possible versions):
  ```Smalltalk
  GsDeployer deploy: [
    Metacello new
      baseline: 'Seaside3';
      repository: 'github://GsDevKit/Seaside31:v3.1.3-gs/repository';
      onLock: [:ex | ex honor];
      load: #('Development' 'Examples' 'Zinc') ].
  ```

## Managing Gem Servers

```Smalltalk
"Register gem servers"
FastCGISeasideGemServer register: 'FastCGISeasideGems' on: #( 9001 9002 9003 ).
ZnSeasideGemServer register: 'ZincSeasideGems' on: #( 8383 ).

"Start gem servers"
(GemServerRegistry gemServerNamed: 'FastCGISeasideGems') startGems.
(GemServerRegistry gemServerNamed: 'ZincSeasideGems') startGems.

"Restart gem servers"
(GemServerRegistry gemServerNamed: 'FastCGISeasideGems') restartGems.
(GemServerRegistry gemServerNamed: 'ZincSeasideGems') restartGems.

"Stop gem servers"
(GemServerRegistry gemServerNamed: 'FastCGISeasideGems') stopGems.
(GemServerRegistry gemServerNamed: 'ZincSeasideGems') stopGems.

"Unregister gem servers"
(GemServerRegistry gemServerNamed: 'FastCGISeasideGems') unregister.
(GemServerRegistry gemServerNamed: 'ZincSeasideGems') unregister.
```

## Build Status
 - [![gs_master branch:](https://travis-ci.org/GsDevKit/Seaside31.png?branch=gs_master)](https://travis-ci.org/GsDevKit/Seaside31) gs_master (Gemstone)
 - [![master branch (pharo/squeak):](https://travis-ci.org/GsDevKit/Seaside31.png?branch=master)](https://travis-ci.org/GsDevKit/Seaside31)  master (Pharo/Squeak)

 [1]: https://github.com/GsDevKit/gsDevKitHome/blob/master/projects/glass/upgradeToGLASS1.md#upgrade-to-glass1
