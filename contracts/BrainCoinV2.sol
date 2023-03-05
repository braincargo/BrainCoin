// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20SnapshotUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/// @custom:security-contact security@braincargo.com
contract BrainCoinV2 is Initializable, ERC20Upgradeable, ERC20BurnableUpgradeable, ERC20SnapshotUpgradeable, OwnableUpgradeable, PausableUpgradeable, ERC20PermitUpgradeable, ERC20VotesUpgradeable, UUPSUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

        function social_contract() public pure returns (string memory) {
        return "Open Source\nYour keys your AI\nYour keys your Data\nYou own AI";
    }

    function tokenomics() public pure returns (string memory) {
        return "The more you use BrainCargo\nThe more BrainCoins you get\nThe better the AI gets\nThe more your BrainCoins are worth\nThe more you tell your friends\nThe more BrainCoins you get\nThe better the AI gets\nThe more your BrainCoins are worth\nThe more you work on building the AI\nThe more BrainCoins you get\nThe better the AI gets\nThe more your BrainCoins are worth.";
    }

    function white_paper() public pure returns (string memory){
        return "BrainCargo: Own AI."
"BrainCargo is a recommendation system. The user trains their own AI to know what the users likes, wants and needs are and then recommends actions for the user. The first use case is for the recommendation of videos to watch. The user can upload past viewing history from youtube, Netflix, hulu and other online streaming platforms which will then generate a customized AI unique to the user. The users AI will then recommend videos for the user to watch in a feed or stream similar to the tiktok/Instagram feed. The user can like, dislike, skip or add to playlist of the videos. The interactions of the user further train the AI to know more about the user\'s preferences. The next AI to be completed will be for music functioning similar to the video recommendation system."
"The user will have the option to pay for their own AI or have a free AI. At all times the user will maintain sole control of their data, and their AI. However, they will have the opportunity to sell the rights to their video recommendation feed to advertisers. If the user is on the free option this will pay for the costs associated with compute and storage of their AI. If a user pays for their own AI they can sell access to their recommendation feed to advertisers or chose not too."
"Additionally, users will have the ability to sell their data. They can sell it back to BrainCargo to train a universal AI (The Brain) or they can sell it to advertisers or anyone they want too. It is the user\'s choice whether to sell their data or not."
"After the initial AI recommendation systems are available a general marketplace for additional AI recommendation systems will be made available to developers to implement their own AI recommendation systems and add them to BrainCargo. The developers created AI must be open source, but they can license the use of their AI to the BrainCargo users (Brainiacs). Users can choice to subscribe to the developers AI and offset the costs by selling rights to the subsequently generated feed to BrainCargo\'s advertisers."
"AI requires data beyond the user\'s preferences. For example, in the movie scenario above, the dataset of all movies, actors, scripts and other additional data will make for a more accurate recommendation system. Therefore, BrainCargo will allow for contributors to add datasets. The datasets will have the opportunity to be purchased by BrainCargo and used by the The Brain or purchased directly by the users to enhance their own AI. If the data is a feed, for example current stock prices which needs to be updated regularly then the data contributor can license the data feed to the users and/or to BrainCargo."
"The Brain will be informed from Brainiacs who allow their data from their trained AI to also be used to train The Brain. This will allow for The Brain to become better and therefore the users AI better. A paying user can opt out of sharing their data with training The Brain but users on the free tier cannot. The Brain will be cloned to a user on creation of their account."
"In order to scale AI to serve millions of users, training their AI, serving recommendations and storing their data an optimized and cost efficient MLOps system is needed. Kubify has both an open source infrastructure component for scaling across the clouds the full stack web application and a proprietary MLOps infrastructure system that is the most cost effective and efficient system in the industry. This is achieved by being multicloud, searching for optimum pricing, stripped down containers, scalable to millions of experiments, and currently used at companies in the 10k+ by data scientists everywhere.";

    }



    function initialize() initializer public {
        __ERC20_init("BrainCoin", "Brain");
        __ERC20Burnable_init();
        __ERC20Snapshot_init();
        __Ownable_init();
        __Pausable_init();
        __ERC20Permit_init("BrainCoin");
        __ERC20Votes_init();
        __UUPSUpgradeable_init();

        _mint(msg.sender, 1000000000000 * 10 ** decimals());
    }

    function snapshot() public onlyOwner {
        _snapshot();
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override(ERC20Upgradeable, ERC20SnapshotUpgradeable)
    {
        super._beforeTokenTransfer(from, to, amount);
    }

    function _authorizeUpgrade(address newImplementation)
        internal
        onlyOwner
        override
    {}

    // The following functions are overrides required by Solidity.

    function _afterTokenTransfer(address from, address to, uint256 amount)
        internal
        override(ERC20Upgradeable, ERC20VotesUpgradeable)
    {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount)
        internal
        override(ERC20Upgradeable, ERC20VotesUpgradeable)
    {
        super._mint(to, amount);
    }

    function _burn(address account, uint256 amount)
        internal
        override(ERC20Upgradeable, ERC20VotesUpgradeable)
    {
        super._burn(account, amount);
    }
}
