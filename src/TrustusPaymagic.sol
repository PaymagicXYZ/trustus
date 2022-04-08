// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.4;

import {Trustus} from "./Trustus.sol";

contract TrustusPaymagic is Trustus {
    function verify(bytes32 request, TrustusPacket calldata packet) public {
        _verifyPacket(request, packet);
    }
}