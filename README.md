# Foundry Template [![Github Actions][gha-badge]][gha] [![Foundry][foundry-badge]][foundry] [![License: MIT][license-badge]][license]

[gha]: https://github.com/threesigmaxyz/foundry-template/actions
[gha-badge]: https://github.com/threesigmaxyz/foundry-template/actions/workflows/ci.yml/badge.svg
[foundry]: https://getfoundry.sh/
[foundry-badge]: https://img.shields.io/badge/Built%20with-Foundry-FFDB1C.svg
[license]: https://opensource.org/licenses/MIT
[license-badge]: https://img.shields.io/badge/License-MIT-blue.svg

A Foundry-based template for developing Solidity smart contracts.

## What's Inside

- [Forge](https://github.com/foundry-rs/foundry/blob/master/forge): compile, test, fuzz, debug and deploy smart contracts
- [Forge Std](https://github.com/foundry-rs/forge-std): collection of helpful contracts and cheatcodes for testing
- [Anvil](https://github.com/foundry-rs/foundry/tree/master/anvil): local Ethereum node, akin to Ganache, Hardhat Network.

## Getting Started

Click the [`Use this template`](https://github.com/threesigmaxyz/foundry-template/generate) button at the top of the page to create a new repository with this repo as the initial state.

Or, if you prefer to install the template manually:

```sh
forge init my-project --template https://github.com/threesigmaxyz/foundry-template
cd my-project
make install
```

If this is your first time with Foundry, check out the [installation](https://github.com/foundry-rs/foundry#installation) instructions.

## Blueprint

```ml
lib
├─ forge-std — https://github.com/foundry-rs/forge-std
├─ openzeppelin-contracts — https://github.com/OpenZeppelin/openzeppelin-contracts
scripts
├─ 01_Deploy.s.sol — Simple Deployment Script
src
├─ Greeter.sol — A Greeter Contract
test
└─ Greeter.t.sol — Minimal Tests
```

## Features

This template builds upon the frameworks and libraries mentioned above, so for details about their specific features, please consult their respective documentations.

For example, for Foundry, you can refer to the [Foundry Book](https://book.getfoundry.sh/). You might be in particular interested in reading the [Writing Tests](https://book.getfoundry.sh/forge/writing-tests.html) guide.

### GitHub Actions

This template comes with GitHub Actions pre-configured. Your contracts will be linted and tested on every push and pull
request made to the `main` branch.

You can edit the CI script in [.github/workflows/ci.yml](./.github/workflows/ci.yml).

### Conventional Commits

This template enforces the [Conventional Commits](https://www.conventionalcommits.org/) standard for git commit messages.
This is a lightweight convention that creates an explicit commit history, which makes it easier to write automated
tools on top of.

### Sensible Defaults

This template comes with sensible default configurations in the following files:

```text
├── .gitignore
├── foundry.toml
└── remappings.txt
└── slither.config.json
```


## Usage

Here's a list of the most frequently needed commands.

### Build

Build the contracts:

```sh
$ make build
```

### Clean

Delete the build artifacts and cache directories:

```sh
$ make clean
```

### Compile

Compile the contracts:

```sh
$ make build
```

### Scripting

Scripts can be run in any network (for example, goerli) by doing
- Edit the script in `01_Deploy.s.sol`.
- Set up the private key in `.env`.
- Run `make deploy-network network=goerli`.
- The receipts are in `/broadcast/run-latest.json`.

### Test

To run all tests execute the following commad:

```
make tests
```

Alternatively, you can run specific tests as detailed in this [guide](https://book.getfoundry.sh/forge/tests).

### Security

This repository includes a Slither configuration, a popular static analysis tool from [Trail of Bits](https://www.trailofbits.com/). To use Slither, you'll first need to [install Python](https://www.python.org/downloads/) and [install Slither](https://github.com/crytic/slither#how-to-install).

Then, you can run:

```sh
make slither
```

And analyse the output of the tool.

# About Us
[Three Sigma](https://threesigma.xyz/) is a venture builder firm focused on blockchain engineering, research, and investment. Our mission is to advance the adoption of blockchain technology and contribute towards the healthy development of the Web3 space.

If you are interested in joining our team, please contact us [here](mailto:info@threesigma.xyz).

---

<p align="center">
  <img src="https://threesigma.xyz/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fthree-sigma-labs-research-capital-white.0f8e8f50.png&w=2048&q=75" width="75%" />
</p>
