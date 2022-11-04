// pragma solidity ^0.8.4;

// import "./IERC20.sol";

// contract SampleToken is IERC20 {
//     constructor () {
//         _totalSupply = 1000000;
//         _balances[msg.sender] = 1000000;
//     }

//     uint256 private _totalSupply;
//     mapping(address => uint256) private _balances;
//     mapping(address => mapping(address => uint256)) private _allowances;
//     event Transfer(address _from, address _to, uint256 _value);

//     function totalSupply() public view override returns (uint256)
//     {
//         return _totalSupply;
//     }

//     function balanceOf(address account) public view returns (uint256 balance)
//     {
//         return _balances[account];
//     }

//     function transfer(address recipient, uint256 amount) public returns (bool success)
//     {
//         require(_balances[msg.sender] >= amount);
//         _balances[msg.sender] -= amount;
//         _balances[recipient] += amount;
//         // emit Trasfer(msg.sender, recipient, amount);

//         return true;
//     }

//     function transferFrom(address sender, address recipient, uint256 amount) public returns (bool success)
//     {
//         require(_balances[sender] >= amount);
//         require(_allowances[sender][msg.sender] >= amount);
//         _balances[sender] -= amount;
//         _balances[recipient] += amount;
//         emit Transfer(sender, recipient, amount);

//         return true;
//     }

//     function approve(address spender, uint256 amount) public returns (bool success)
//     {
//         _allowances[msg.sender][spender] = amount;
//         emit Approval(msg.sender, spender, amount);

//         return true;
//     }
//     function allowance(address owner, address spender) public view returns (uint256 remaining)
//     {
//         return _allowances[owner][spender];
//     }
// }
