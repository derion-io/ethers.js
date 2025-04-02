State Override
==================


Installing
----------

**node.js**

```sh
npm install --save https://github.com/derion-io/ethers.js.git
```


Usage
----------

**node.js**

```js
// JsonRpcProvider must be imported this way
import { JsonRpcProvider } from '@ethersproject/providers'
import { ethers } from 'ethers'
import { abi, deployedBytecode } from './abi/StateOverrideContract.json'

const provider = new JsonRpcProvider(...)
const contract = new ethers.Contract(contractAddress, abi, provider)

provider.setStateOverride({
    [contract.address]: {
        code: deployedBytecode,
    },
})

const result = await contract.callStatic.viewFunction(...)

```
