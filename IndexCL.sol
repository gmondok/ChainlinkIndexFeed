pragma solidity ^0.6.7;

import "https://github.com/smartcontractkit/chainlink/blob/master/evm-contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract indexFeed{

    AggregatorV3Interface internal ftseFeed;

    /**
     * Aggregator: FTSE
     * Address: 0xE23FA0e8dd05D6f66a6e8c98cab2d9AE82A7550c
     */
    constructor() public {
        ftseFeed = AggregatorV3Interface(0xE23FA0e8dd05D6f66a6e8c98cab2d9AE82A7550c);
    }
    
    //Returns the latest Supply info
    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint updatedAt,
            uint80 answeredInRound
        ) = ftseFeed.latestRoundData();
        return price;
    }
}
