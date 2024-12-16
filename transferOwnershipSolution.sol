```javascript
function transferOwnership(newOwner) {
  // Check if the caller is the current owner and the new owner is a valid address
  require(msg.sender == owner && newOwner != address(0), "Only the owner can transfer ownership to a valid address");

  // Transfer ownership
  owner = newOwner;
  emit OwnershipTransferred(msg.sender, newOwner);
}
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
```