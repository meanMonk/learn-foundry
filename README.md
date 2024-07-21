## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```


### Storing private key to keystore instead of exposing it via .env

```shell

cast wallet import <account_name> --interactive

# add private key
# add password
```

### Use pk from key store while deploying via script.



```shell
forge script script/<ContractName>.s.sol --rpc-url $ANVIL_RPC_URL --account defaultKey --sender <senderAccountAddress> --broadcast -- --vvv


# --vvv for verbosity.
# --broadcast to broadcast the deployment
# --account <Account name> to load the account name from keystore.
# --sender sender account address.
```