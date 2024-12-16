```javascript
function transferOwnership(newOwner) {
  // Check if the caller is the current owner
  require(msg.sender == owner, "Only the owner can transfer ownership");

  // Transfer ownership
  owner = newOwner;
}
```