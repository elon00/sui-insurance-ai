// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title SuiInsuranceRegistry
 * @dev Object-Centric Move Asset Protection and PTB Execution Insurance Model
 */
contract SuiInsuranceRegistry {
    struct ObjectPolicy {
        address owner;
        bytes32 moveObjectId;
        uint256 valuationMist;
        bool isProtected;
    }

    mapping(bytes32 => ObjectPolicy) public protectedObjects;
    event ObjectProtected(bytes32 indexed objectId, address indexed owner, uint256 valuation);
    event LossIndemnified(bytes32 indexed objectId, address indexed owner, uint256 amount);

    function protectMoveObject(bytes32 objectId, uint256 valuation) external payable {
        require(msg.value > 0, "Premium required");
        protectedObjects[objectId] = ObjectPolicy({
            owner: msg.sender,
            moveObjectId: objectId,
            valuationMist: valuation,
            isProtected: true
        });

        emit ObjectProtected(objectId, msg.sender, valuation);
    }

    function claimMoveObjectLoss(bytes32 objectId) external {
        ObjectPolicy storage p = protectedObjects[objectId];
        require(p.isProtected, "Not protected");
        require(msg.sender == p.owner, "Unauthorized");

        p.isProtected = false;
        payable(p.owner).transfer(p.valuationMist);
        emit LossIndemnified(objectId, p.owner, p.valuationMist);
    }
}
