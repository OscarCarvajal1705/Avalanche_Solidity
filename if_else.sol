// SPDX-License-Identifier: MIT

//imita a un portero de un bar y pregunta la edad si es menor de 18 niega la entrada

pragma solidity 0.8.24;

contract if_else{

    uint256 public numero;//variable de estado que almacena la edad 

    function establecerNumero(uint256 _numero) public {// esta funcion establece el valor de _numero que es el parametro de esta
        numero = _numero; 
    }

    function mensaje() public view returns(string memory)/* el view sirve solo para ver el contenido de la funcion*/ {
        
        //control de fuljo if - else
        if (numero > 18) {
            return "Puedes pasar eres mayor de edad";
        //condicion secundiaria
        } else if (numero == 18) {
            return "Acabas de cumplir 18 puedes pasar";
        //condicion final    
        } else {
            return "Eres menor de edad no puedes pasar";
        }
    }

}

