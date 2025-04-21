# Supply Chain Smart Contract on Hyperledger Fabric

This project implements a simple **supply chain management system** using a smart contract (chaincode) written in Go for **Hyperledger Fabric**.

It is designed to demonstrate product tracking on a private blockchain, including:
- Product creation
- Updating product information
- Transferring ownership
- Querying product details

---

## Features

- **Products** have unique IDs and fields like name, owner, status, category, and timestamps.
- All transactions are secured and recorded on a private blockchain ledger.
- Developed using Hyperledger Fabric's smart contract framework for Go.

---

## Code Overview

###  `Product` struct

Each product on the blockchain contains:
```go
type Product struct {
    ID          string
    Name        string
    Status      string
    Owner       string
    CreatedAt   string
    UpdatedAt   string
    Description string
    Category    string
}
```

# Supply Chain Smart Contract on Hyperledger Fabric

This project implements a simple supply chain management system using a smart contract (chaincode) written in Go for Hyperledger Fabric.

It is designed to demonstrate product tracking on a private blockchain, including:
- Product creation
- Updating product information
- Transferring ownership
- Querying product details
- Listing all products

Smart Contract Methods
----------------------------

|   Function | Description|
| --- | --- |
|   ```InitLedger()```          | Initializes the ledger with two products  |
|   ```CreateProduct()```       | Adds a new product to the blockchain      |
|   ```UpdateProduct()```       | Updates status, description, and category |
|   ```TransferOwnership()```   | Changes product owner                     |
|   ```QueryProduct()```        | Retrieves a single product                |
|   ```GetAllProducts()```      | Lists all products                        |
|   ```ProductExists()```       | Helper to check if a product exists       |
|   ```putProduct()```          | Helper to write product to the ledger     |




How to Run (Beginner-Friendly)
----------------------------

Prerequisites:
- Windows 10 or higher with WSL2 (Ubuntu)
- Docker Desktop with WSL integration
- Go (version 1.18 or higher)
- Git
- curl
- jq

Setup Fabric Network
----------------------------

Open Ubuntu (WSL) and run the following:
```
mkdir fabric-tools && cd fabric-tools
curl -sSL https://bit.ly/2ysbOFE | bash -s

cd fabric-samples/test-network
```

Run the Network
----------------------------

```
./network.sh down
./network.sh up createChannel
```

Deploy the Chaincode
----------------------------

From inside the fabric-samples/test-network folder:
```
./network.sh deployCC -ccn supplyChain -ccp ../../Code -ccl go
```

Invoke Example
----------------------------

To create a product:
```
peer chaincode invoke -C mychannel -n supplyChain \
-c '{"function":"CreateProduct","Args":["p3", "Tablet", "CompanyC", "10-inch display tablet", "Electronics"]}' \
--orderer localhost:7050 --ordererTLSHostnameOverride orderer.example.com --tls \
--cafile $PWD/organizations/ordererOrganizations/example.com/tlsca/tlsca.example.com-cert.pem \
--peerAddresses localhost:7051 \
--tlsRootCertFiles $PWD/organizations/peerOrganizations/org1.example.com/tlsca/tlsca.org1.example.com-cert.pem \
--peerAddresses localhost:9051 \
--tlsRootCertFiles $PWD/organizations/peerOrganizations/org2.example.com/tlsca/tlsca.org2.example.com-cert.pem
```

Query the Product
----------------------------

To query the created product:
```
peer chaincode query -C mychannel -n supplyChain -c '{"Args":["QueryProduct","p3"]}' | jq .
```


Folder Structure
----------------------------

```
Code/
├── smartcontract.go         # Your main Go chaincode
├── go.mod / go.sum          # Module files
├── README.md                # This file
```