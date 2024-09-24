// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract array {

    uint256[] public arr;
    uint256[] public arr2 =[22,33,44];
    // se puede inicializar un array de tamaño fijo, todos los elementos en el array van a ser iguales a 0
    uint256[10] public arr3;

    function get(uint256 i) public view returns (uint256) {// i es el indice que queremos ver de array
        return arr[i];
    }
    //funcion para ver el indice de un array

    function getArr() public view returns (uint256[] memory) {
        return arr2;
    }
    //funcion para ver todos los elementos de un array

    function push(uint256 _i) public {
        arr2.push(_i);
    }
    //funcion para agregar un nuevo elemento a un array

    function pop() public {
        arr2.pop();
    }
    //funcion para borrar el ultimo elemento de un array

    function getLength() public view returns (uint256){
        return arr2.length;
    }
    // muestra el largo del array

    function remove(uint256 _index) public{
        delete arr2[_index];
    }
}
