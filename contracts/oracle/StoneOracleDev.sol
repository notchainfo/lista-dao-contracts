// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract StoneOracleDev is Initializable,AccessControl {

    AggregatorV3Interface internal stoneEthPrice;
    AggregatorV3Interface internal ethUsdPrice;
    bytes32 public constant UPDATER_ROLE = keccak256("UPDATER_ROLE");

    function initialize(address stoneEthPriceAddr,address ethUsdPriceAddr) external initializer {
        stoneEthPrice = AggregatorV3Interface(stoneEthPriceAddr);
        ethUsdPrice = AggregatorV3Interface(ethUsdPriceAddr);
        _setupRole(UPDATER_ROLE, msg.sender);
    }

    function updateAddress(address stoneEthPriceAddr,address ethUsdPriceAddr) external {
        require(hasRole(UPDATER_ROLE, msg.sender), "Caller is not an updater");
        stoneEthPrice = AggregatorV3Interface(stoneEthPriceAddr);
        ethUsdPrice = AggregatorV3Interface(ethUsdPriceAddr);
    }

    /**
      * Returns the latest price
      */
    function peek() public view returns (bytes32, bool) {
        (
        /*uint80 roundID*/,
            int price1,
        /*uint startedAt*/,
            uint timeStamp1,
        /*uint80 answeredInRound*/
        ) = stoneEthPrice.latestRoundData();

        require(block.timestamp - timeStamp1 < (24 * 3600), "stoneEthPriceFeed/timestamp-too-old");

        (
        /*uint80 roundID*/,
            int price2,
        /*uint startedAt*/,
            uint timeStamp2,
        /*uint80 answeredInRound*/
        ) = ethUsdPrice.latestRoundData();

        require(block.timestamp - timeStamp2 < 300, "ethUsdPriceFeed/timestamp-too-old");

        if (price1 <= 0 || price2 <= 0) {
            return (0, false);
        }


        return (bytes32(uint(price1) * uint(price2) * (10**2)), true);
    }
}