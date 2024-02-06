# Prerequisites
In this chapter we will be talking about some of the techinques and frameworks that DEP uses, it is vital to the developement of DEP APP.

## Docker
In order to build an DEP APP, one must have the knowledge to write the corresponding `Dockerfile` and build the image with `docker build`.

You will also need to know about `docker push` command to push the image to the cloud, so that every DEP device can access this image.

First you can go to the [docker 101](https://www.docker.com/101-tutorial/) page to download and install docker, you can choose to install by using `docker desktop` or system package manager.

Then make sure docker daemon is running by checking `docker run -it --rm hello-world` which should print the following information:
```bash
Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
```

## Etherum contract calls
A "smart contract" is simply a program that runs on the Ethereum blockchain. It's a collection of code (its functions) and data (its state) that resides at a specific address on the Ethereum blockchain.

Smart contracts are a type of Ethereum account. This means they have a balance and can be the target of transactions. However they're not controlled by a user, instead they are deployed to the network and run as programmed. User accounts can then interact with a smart contract by submitting transactions that execute a function defined on the smart contract. Smart contracts can define rules, like a regular contract, and automatically enforce them via the code. Smart contracts cannot be deleted by default, and interactions with them are irreversible.

To start calling DEP contract, you will need a wallet manager such as metamask, then you will need to config your network as follow:

![metamask_config](./metamask_config.png)

Then you can access the [DEP contract page](https://evm.deeper.network/address/0xC39acC1B3FA595BBaF916A5D6aD222afc91EB079) to view all the transactions and available contract calls:

![dep_contract_overview](./dep_contract_overview.png)

You can check available calls on the `Read Contract` and `Write Contract` tab.

## Solidity

[Solidity](https://soliditylang.org/) is a high-level programming language used for writing smart contracts on the Ethereum or EVM-compatible blockchains. It is similar to JavaScript in its syntax and is designed to be both readable and efficient for blockchain programming.

Solidityis a statically typed language, which means that the data types of variables are determined at compile-time rather than at runtime. This makes it easier to catch errors early on in the development process.

One of the unique features of Solidity is its ability to interact with the Ethereum Virtual Machine (EVM), which is the runtime environment for smart contracts on the Ethereum blockchain. Solidity contracts are compiled into EVM bytecode, which can be executed by nodes on the network. This makes it possible to create decentralized applications (dApps) that run entirely on the blockchain.

Solidity is also an object-oriented programming language, which means that it uses objects to represent data and functionality. Objects can be created from classes, which define the properties and methods of the object. Solidity supports inheritance, encapsulation, and polymorphism, which are key concepts in object-oriented programming

One of the most popular tools for developing Solidity contracts is Remix. Below is a  [simple example](https://remix.ethereum.org/?#language=solidity&version=soljson-v0.8.18+commit.87f61d96.js&code=Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0zLjAKcHJhZ21hIHNvbGlkaXR5ID49MC40LjE2IDwwLjkuMDsKCmNvbnRyYWN0IFNpbXBsZVN0b3JhZ2UgewogICAgdWludCBzdG9yZWREYXRhOwoKICAgIGZ1bmN0aW9uIHNldCh1aW50IHgpIHB1YmxpYyB7CiAgICAgICAgc3RvcmVkRGF0YSA9IHg7CiAgICB9CgogICAgZnVuY3Rpb24gZ2V0KCkgcHVibGljIHZpZXcgcmV0dXJucyAodWludCkgewogICAgICAgIHJldHVybiBzdG9yZWREYXRhOwogICAgfQp9&lang=en&optimize=false&runs=200&evmVersion=null)  written in Solidity:
```solidity
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }
}
```

You can compile your contract like below:

![compile](./compile.png)

Then deploy the contract in test enviroment:

![deploy](./deploy.png)


## Rust(optional)

The is an official DEP API bindings written in Rust, but you can also use the blockchain browser to call all DEP APIs.

To get started with Rust, one can visit the [official rust website](https://www.rust-lang.org/learn/get-started) and follow the installing steps.

To learn the basics about Rust, you can follow the [book](https://doc.rust-lang.org/book/), but for DEP developement, you will only need to read the first `6` chapters then you will be good to go.

![rust](./rust.png)