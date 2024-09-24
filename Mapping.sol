// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Mapping{
    mapping (address => uint256) balances;// definimos un mapping de direcciones y enteros

    //funcion para establecer el balance de avax en el mapping

    function setBalance(address _addr) public {
        uint256 avaxBalance = _addr.balance; 
        balances[_addr] = avaxBalance;
    }

    //funcion para obtener el valor del mapping en el valor indice

    function getBalance(address _addr) public view returns (uint256){
        return balances[_addr];
    }

    //funcion que permite eliminar un valor del mapping

    function remove(address _addr) public  {
        delete balances[_addr];
    }

    // funcion que llama a otra funcion 
    // funcion que llama a otra funcion ya creada para actualizar los balances del mapping

    function updateBalanceAvax(address _addr) public  {
        setBalance(_addr);
    }
} 