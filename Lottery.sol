// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Lottery {
    mapping(address => mapping(uint => uint[])) ticketsList;
    mapping(uint => address) ticketsOwner;
    uint currentRound;

    function buyTickets(uint initialTicketsSupply, uint ticketsAmount) external {
        for (uint i = 1; i <= ticketsAmount; ++i) {
            ticketsList[msg.sender][currentRound].push(initialTicketsSupply + i);
            ticketsOwner[initialTicketsSupply + i] = msg.sender;
        }
    }
}