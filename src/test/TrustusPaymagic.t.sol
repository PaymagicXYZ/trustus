// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.4;

import {TrustusPaymagic} from "../TrustusPaymagic.sol";

contract TrustusPaymagicTest is TrustusPaymagic {
    TrustusPaymagic trustusPaymagic;
    TrustusPacket[] public packets;

    function pushPacket() public {
        TrustusPacket memory p = TrustusPacket({v: 0, r: "0x", s: "0x", request: "0x", deadline: 0, payload: "0x"});
        packets.push(p);
    }

    function setUp() public {
        trustusPaymagic = new TrustusPaymagic();
        pushPacket();
    }

    function testVerify() public {
        trustusPaymagic.verify("0x", packets[0]);
    }
}
