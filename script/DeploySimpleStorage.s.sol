// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    /**
     * 创建一个新的SimpleStorage实例并返回。
     * 该函数外部可见，无需参数。
     *
     * @return SimpleStorage 返回新创建的SimpleStorage实例的引用。
     */
    function run() external returns (SimpleStorage) {
        // 开始广播交易
        vm.startBroadcast();
        // 创建SimpleStorage实例
        SimpleStorage simpleStorage = new SimpleStorage();
        // 停止广播交易
        vm.stopBroadcast();
        // 返回创建的SimpleStorage实例
        return simpleStorage;
    }
}
