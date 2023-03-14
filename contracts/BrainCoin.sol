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
contract BrainCoin is Initializable, ERC20Upgradeable, ERC20BurnableUpgradeable, ERC20SnapshotUpgradeable, OwnableUpgradeable, PausableUpgradeable, ERC20PermitUpgradeable, ERC20VotesUpgradeable, UUPSUpgradeable {
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }
    ///////////////////////////////////////
    function social_contract() public pure returns (string memory) {
        return "Open Source\nYour keys - your AI\nYour keys - your Data\nYour Recommendations - your BrainCoin\n\n"
        "The more you use BrainCargo\nThe more BrainCoin you get\nThe better the AI gets\nThe more your BrainCoin is worth\n"
        "The more you tell your friends\nThe more BrainCoin you get\nThe better the AI gets\n"
        "The more your BrainCoin is worth\nThe more you work on contributing to AI\nThe more BrainCoin you get\n"
        "The better BrainCargo AI gets\nThe more your BrainCoin is worth.\n"
        "\nWe need AI that serves and rewards us. Be a part of the AI Revolution lead by BrainCargo and watch your life prosper!\n"
        "\nIN BRAIN WE TRUST";
    }

    function white_paper() public pure returns (string memory){
        return "BrainCargo - Own Your AI\n"
            "\n"
            "Philip Tolk\n"
            "philip@braincargo.com\n"
            "www.braincargo.com \n"
            "www.braincoin.com\n"
            "\n"
            "March 13, 2023\n"
            "\n"
            "BrainCargo is a recommendation engine. The user trains their own AI to know the users likes, wants and needs. The AI then recommends actions for the user. \n"
            "\n"
            "BrainCargo is an advanced social contract between the system and the users whose data will be protected while the users will have sole ownership of their AI. The users information will not be accessible without permission. This gives a rise to a broad economic incentive model where the users can sell their data using BrainCargo as a facilitator. The platform creates a seamless and easy way to make transactions between the user and interested parties. Participants are rewarded with valuable BrainCoin Tokens. \n"
            "\n"
            "The first use case is for video recommendations. BrainCargo users can upload past viewing history from YouTube, Netflix, Hulu and other online streaming platforms which will then generate a customized AI unique to each user. The users AI will then recommend videos to watch in a feed or stream similar to TikTok or Instagram. BrainCargo user can then like, dislike, skip or add to the playlist of videos. The interactions of the user further train the AI to know more about the users' preferences. The next AI to be completed is for music and movie streaming and will function similar to the video recommendation system. \n"
            "\n"
            "BrainCargo uses Kubify which scales to support millions of users training their AI and serving the recommendations in an optimized and cost efficient MLOps system. Kubify is an open source infrastructure component for scaling across multi cloud. It powers the entire MLOps stack and is the most cost effective and proficient system in the industry.\n"
            "\n"
            "AI Alignment\n"
            "\n"
            "The world is competing for your attention. The outpour of information all around us and the digitalized space in which we now live in is collecting our thoughts, needs and wants at all times. Attention is a precious recourse that users are contributing, and advertisers are competing for in order to monetize and control the users actions. \n"
            "BrainCargo will assist you in taking back control by Owning Your AI. \n"
            "The system is designed to help users make better and more informed decisions and life choices while getting paid for their participation. How can we ensure that the information we are presented is for our benefit? While we are bombarded by emotion driven advertisement information and suggestions, BrainCargo will be programmed with the help of psychological science to help its users process through contemplations and feelings making the collective data better, kinder, healthier and stronger. The end user will benefit from the honest, transparent system BrainCargo presents through being decentralized and open source. AI by the people, for the people, helping us evolve into a loving, caring, free society. Through a more advantageous incentive structure which promotes the rights of the individual while helping the user improve and therefore advance the collective human race, BrainCargo links us to our higher self and each other!\n"
            "\n"
            "Transactions\n"
            "\n"
            "BrainCargo users are called Brainiacs and are rewarded for their participation by unlocking incentives, deals, helpful data and getting paid in BrainCoin. Brainiacs own their AI data and can always access it. Brainiacs can sell their AI to Advertisers or each other. At any point Brainiacs can sell their BrainCoin or purchase more based on availability. The more data and information Brainiacs upload to BrainCargo the more valuable their account becomes thus causing their BrainCoin to go up in value.\n"
            "\n"
            "System\n"
            "\n"
            "BrainCargo is loyal to the users and its design is simple, honest and straightforward. \n"
            "\n"
            "BrainCargo's groundbreaking technology turns human knowledge and experience into BrainPower which creates BrainCells that feed the Brain (Main AI). Another form of BrainPower is supplied by the Developers called BrainEngineers who sign onto BrainCargo to contribute more AI through open source code - called BrainCode. By contributing BrainCode, BrainEngineers are awarded insensitive and BrainCoin in return. Brainiacs and BrainEngineers produce BrainCells and BrainCode that feed BrainPower to the Brain. By generating BrainCells, Brainiacs are rewarded with BrainCoin. The more BrainCells they generate - the stronger the Brain becomes and the more valuable BrainCoin gets. The smarter the Brain gets - the stronger BrainCargo AI becomes. BrainCoin Token is the currency which tracks the value of BrainCargo System. The value of BrainCoin goes up when more Brainiacs contribute data and more BrainEngineers contribute code - as well as when more BrainCoin Cryptocurrency is being bought.\n"
            "Brainiacs will also be rewarded for referring new users to BrainCargo.\n"
            "BrainCoin is a gamification mechanism for rewarding participation in BrainCargo Economy.\n"
            "BrainCoin Token ownership allows its user to vote in the DAO.\n"
            "\n"
            "Tokenomics\n"
            "\n"
            "Advertisers pay to have their ads appear in users' feed. \n"
            "Brainiacs can sell access to their feed to advertisers and get paid in BrainCoin. Brainiacs can also sell their AI and data if they choose.\n"
            "The DAO pays BrainEngineers BrainCoin to improve the system.\n"
            "\n"
            "Value \n"
            "\n"
            "There are a lot of benefits that come with being a part of BrainCargo community. A private, respectful, trustworthy platform that fosters safe exchange of AI data for incentives. BrainCargo's economic model is a Win-Win-Win for all involved - users win by getting the products and services they deserve and by getting rewarded for their recommendations, advertisers win by presenting a needed and well selected product that will enhance the users experience, and BrainCargo wins by contributing a wholesome fun AI that changes human interaction and behavior for the better. \n"
            "\n"
            "Privacy \n"
            "\n"
            "For BrainCargo privacy is of first and foremost importance. \n"
            "As mentioned above, the users' data is never sold, and each user owns their own AI fully secured by their own private keys. \n"
            "The AI code is available to all and is open source.\n"
            "\n"
            "\n"
            "Conclusion \n"
            "\n"
            "BrainCargo's AI gives its users back control over their choices. \n"
            "\nDedicated to my love to Rada Katz";
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
