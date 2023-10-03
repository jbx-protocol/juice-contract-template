# juice-contract-template

`juice-contract-template` is a starting point for building Solidity extensions to the [Juicebox protocol](https://docs.juicebox.money/dev/). This template includes `forge` and dependencies, and may help you avoid submodule-related dependency issues down the road.

Do not push straight on main. Create a new branch and open a PR – your reviewer will love you for this.

## Dependencies

`juice-contract-template` uses the Foundry smart contract development toolchain. To install Foundry, open your terminal and run the following command:

```bash
curl -L https://foundry.paradigm.xyz | bash
```

Once you have Foundry installed, run `foundryup` to update to the latest versions of `forge`, `cast`, `anvil`, and `chisel`. More detailed instructions can be found in the [Foundry Book](https://book.getfoundry.sh/getting-started/installation).

`juice-contract-template` also uses [NPM](https://nodejs.org/en) to manage NPM dependencies.

To install `forge` and `npm` dependencies, run:

```bash
forge install && npm install
```

## Adding NPM Dependencies

To add an NPM dependency to package.json, run:

```bash
npm add <package-name>
```

Where `<package-name>` is the name of the dependency you'd like to add. Add dependencies to `remappings.txt` by running `forge remappings >> remappings.txt`. For example, the NPM package `jbx-protocol` is remapped as `@jbx-protocol/=node_modules/@jbx-protocol/`.

To upgrade an NPM dependency, run:

```bash
npm upgrade <package>
```

## Adding forge Dependencies

If the dependency you would like to install does not have an up-to-date NPM package, run:

```bash
forge install <dependency-url>
```

where `<dependency-url>` is the dependency's Git URL or GitHub path. This will install the dependency to `/lib`. Forge manages dependencies using git submodules. Learn more about `forge install` in the [Foundry Book](https://book.getfoundry.sh/reference/forge/forge-install).

If nested dependencies are not installing, try running:

```bash
git submodule update --init --recursive --force
```

Nested dependencies are dependencies of other dependencies you have installed.

Run `forge remappings > remappings.txt` to write the dependencies to `remappings.txt`. Note that this will overwrite that file. Learn about remappings in the [Foundry Book](https://book.getfoundry.sh/reference/forge/forge-remappings).

To update forge dependencies, run one or more of the following commands:

```bash
foundryup # Update forge
forge update <dependency-name> # Update one dependency
forge update # Update all dependencies
```

## Scripts

| Command                  | Description                                                                                       |
| ------------------------ | ------------------------------------------------------------------------------------------------- |
| `npm run build`          | Build contracts using `forge`.                                                                    |
| `npm run test`           | Run `forge` tests.                                                                                |
| `npm run test:fork`      | Run tests in CI mode (including slower mainnet fork tests).                                       |
| `npm run size`           | Check contract size.                                                                              |
| `npm run doc`            | Generate natspec docs.                                                                            |
| `npm run lint`           | Lint the code.                                                                                    |
| `npm run tree`           | Generate a Solidity dependency tree.                                                              |
| `npm run deploy:mainnet` | Deploy and verify on mainnet (see .env.example for required env vars, using a ledger by default). |
| `npm run deploy:goerli`  | Deploy and verify on goerli (see .env.example for required env vars, using a ledger by default).  |
| `npm run coverage`       | Display a code coverage summary and generate a LCOV report.                                       |

You can also run `forge` commands. See the [Foundry Book](https://book.getfoundry.sh/reference/forge/) for a description.

## Editor

We recommend using [VSCode](https://code.visualstudio.com/) with Juan Blanco's [solidity](https://marketplace.visualstudio.com/items?itemName=JuanBlanco.solidity) extension. To display code coverage in VSCode, install [Coverage Gutters](https://marketplace.visualstudio.com/items?itemName=ryanluker.vscode-coverage-gutters) (Ryan Luker). In VSCode, press `F1` and run "Coverage Gutters: Display Coverage". Coverage will be displayed as colored markdown lines in the left gutter, after the line numbers.

## PR

Github CI flow will run both unit and forked tests, log the contracts size (with the tests) and check linting compliance.
