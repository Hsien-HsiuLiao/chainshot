pragma solidity ^0.4.19; // TODO: declare version ^0.4.19

contract EscrowContract {
	address public arbiter;
	address public beneficiary;
	address public depositor;

	//constructor
	function EscrowContract (address _arbiter, address _beneficiary) public payable {
		arbiter=_arbiter;
		beneficiary=_beneficiary;
		depositor=msg.sender;
	}

	function approve (){
		require(arbiter==msg.sender);
		//this refers to contract instance or in this case, contract address
		Approved(this.balance);
		beneficiary.transfer(this.balance);
		
	}

	event Approved(uint _contractbalance);
}
