# juice-contract-template
Template used to code juicy solidity stuff - includes forge, libs, etc. 

This template is a good starting point for building solidity extensions to the Juicebox Protocol. Forking this template may help you to avoid submodule related dependency issues down the road.

# Getting started
## Prerequisites
### Install & Update Foundry
Install Forge with `curl -L https://foundry.paradigm.xyz | bash`. If you already have Foundry installed, run `foundryup` to update to the latest version. More detailed instructions can be found in the [Foundry Book](https://book.getfoundry.sh/getting-started/installation).

### Install & Update Yarn
Follow the instructions in the [Yarn Docs](https://classic.yarnpkg.com/en/docs/install).

## Install Included Dependencies
Install the included dependencies (forge tests, Juice-contracts-V3, OZ) with `forge install && yarn install`.

# Adding dependencies
## With Yarn
If the dependency you would like to install has an NPM package, use `yarn add [package]` where [package] is the package name. This will install the dependency to `node_modules`. 

Add the dependency path to `remappings.txt`. For example, the NPM package `jbx-protocol` is remapped as `@jbx-protocol/=node_modules/@jbx-protocol/`.

## With Forge
If the dependency you would like to install does not have an up-to-date NPM package, use `forge install [dependency]` where [dependency] is the path to the dependency repo. This will install the dependency to `/lib`. Forge manages dependencies using git submodules.

Add the dependency path to `remappings.txt`. For example, the forge dependency `ds-test` is remapped as `ds-test/=lib/ds-test/src/`.

More information on remappings is available in the Forge Book.

# Updating dependencies
## With Yarn
Run `yarn upgrade [package]`.

## With Forge
Call `foundryup` to update forge, then call  `git submodule update --init --recursive --force`.