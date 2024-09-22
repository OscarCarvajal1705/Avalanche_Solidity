// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

//variables nativas de la blockchain

contract solidityVars{  
    //indican un numero hexadecimal referente a la wallaet actual
    address public block_now;                                     // direccion del minero actual
    uint public block_diff;                                       // dificultad del bloque actual
    uint public block_num;                                        // va a mostrar el numero de bloque de la cadena actual
    bytes32 public block_hash;                                    // tipo de dato para el block hash
    uint public time_stamp;                                       // muestra la hora y la fecha en la que se quiere ejecutar el contrato en fprmato epoch
    uint public gas_left;                                         // sirve para consultar el gas restante
    address public sender;                                        // direccion de quien esta haciendo la llamada al contrato 
    bytes4 public sig_id;                                         // muestra los primeros 4 de bytes de una llamada a una funcion
    uint public gas_limit;                                        // limite de valor del gas del bloque actual

    function updateParams() public {
        block_now = block.coinbase;
        block_diff = block.prevrandao;
        block_num = block.number;
        time_stamp = block.timestamp;
        gas_left = gasleft();
        sender = msg.sender;
        sig_id = msg.sig;
        gas_limit = block.gaslimit;


    }

}

// 35878878