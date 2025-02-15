// SPDX-License-Identifier: UNLICENSE

pragma solidity ^0.8.28;

contract SceiiCalculator {

    int public nonce = 0;

    function add(uint a, uint b) public returns (uint) {
        nonce++;
        return a + b;
    }

    function subtract(uint a, uint b) public returns (uint) {
        nonce++;
        return a - b;
    }

    function multiply(uint a, uint b) public returns (uint) {
        nonce++;
        return a * b;
    }

    function divide(uint a, uint b) public returns (uint) {
        nonce++;
        return a / b;
    }

    function mod(uint a, uint b) public returns (uint) {
        nonce++;
        return a % b;
    }

    function power(uint a, uint b) public returns (uint) {
        nonce++;
        return a ** b;
    }

    function max(uint a, uint b) public returns (uint) {
        nonce++;
        return a >= b ? a : b;
    }

    function min(uint a, uint b) public returns (uint) {
        nonce++;
        return a <= b ? a : b;
    }

    function avg(uint a, uint b) public returns (uint) {
        nonce++;
        return (a + b) / 2;
    }

    function abs(int a) public returns (uint) {
        nonce++;
        return a < 0 ? uint(-a) : uint(a);
    }

    function sqrt(uint a) public returns (uint) {
        uint x = a;
        uint y = (x + 1) / 2;
        while (y < x) {
            x = y;
            y = (x + a / x) / 2;
        }
        nonce++;
        return x;
    }
}
