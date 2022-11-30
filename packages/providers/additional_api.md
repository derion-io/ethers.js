# Additional APIs

**JsonRpcProvider.setStateOverride**

```js
/**
 * If `state` is not `null` then it will be send on each calls to
 * `JsonRpcProvider.call()`.
 */
JsonRpcProvider.setStateOverride = function(state = null) {}

/**
 * Retrieve state override which is send on each calls to
 * `JsonRpcProvider.call()`.
 */
JsonRpcProvider.getStateOverride = function() {}
```

# Examples

```js
const {JsonRpcProvider} = require('ethers/providers')

let provider = new JsonRpcProvider('http://foo.bar')
provider.setStateOverride({
    '0xd9c9cd5f6779558b6e0ed4e6acf6b1947e7fa1f3': {
        // All attributes is optional.
        // Accept either `state` or `stateDiff`.

        nonce: 12121,
        code: '0x',
        balance: '0x112',
        state: {
            '<hash>': '<hash>'
        },
        stateDiff: {
            '<hash>': '<hash>'
        }
    }
})
provider.getStateOverride()
```
