//tiene que respetar el estandar ERC20, tiene que cumplir con esa interfaz que te define para que
//sea ERC20
//puedo o copiar a mano todas esas funciones, o puedo importar esa interfaz
//https://docs.openzeppelin.com/contracts/4.x/erc20

// contracts/TokenERC20.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenERC20 is ERC20 {
    constructor(uint256 initialSupply) ERC20("MyToken", "TKN") {
        _mint(msg.sender, initialSupply);
    }
}
