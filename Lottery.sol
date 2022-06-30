// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Lottery {
    mapping(address => mapping(uint => uint[])) tickets;
}