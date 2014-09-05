Seaside31
=========
The framework for developing sophisticated web applications in Smalltalk. 
See more at http://www.seaside.st/

## Loading into Gemstone

1. [Upgrade to GLASS1][1]
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

Install a particular version, e.g. 3.1.2 (see [Releases](https://github.com/GsDevKit/Seaside31/releases) for a list of possible versions):
  ```Smalltalk
  GsDeployer deploy: [
    Metacello new
      baseline: 'Seaside3';
      repository: 'github://GsDevKit/Seaside31:v3.1.2-gs/repository';
      onLock: [:ex | ex honor];
      load: 'ALL' ].
  ```

## Build Status
 - [![gs_master branch:](https://travis-ci.org/GsDevKit/Seaside31.png?branch=gs_master)](https://travis-ci.org/GsDevKit/Seaside31) gs_master (Gemstone)
 - [![master branch (pharo/squeak):](https://travis-ci.org/GsDevKit/Seaside31.png?branch=master)](https://travis-ci.org/GsDevKit/Seaside31)  master (Pharo/Squeak)

 [1]: https://github.com/GsDevKit/gsDevKitHome/blob/master/projects/glass/upgradeToGLASS1.md#upgrade-to-glass1
