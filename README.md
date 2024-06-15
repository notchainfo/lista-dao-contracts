# SafePal - Lista Dao //// Pre-Sale · [List Dao Website](https://lista-dao.org)

**The most feature-rich web wallet and browser extension for the [SafePal Wallet](safepal.io)** – with support of jettons, Lista, BNB DNS, liUSD, Bsc Proxy, and Lista Magic.


 <img src="https://radiant-flame-44830ef920.media.strapiapp.com/5fad86e2327507cecea2d5e8_6025d6dc0e08f2558295a58e_Softpa_20_4072171913.jpg" width="600" />
 <img src="https://assets.coingecko.com/rewards/images/150/SafePal.png" width="600" />

The wallet is **self-custodial and safe**. The developers **do not** have access to funds, browser history or any other information. We focus on **speed**, **size** and **attention to detail**. We try to avoid using third-party libraries to ensure maximum reliability and safety, and also to lower the bundle size.

❤️ Good news! $LISTA's first local pre-sale has started!

 Lista Dao, which entered the dex list with a large volume, started its pre-sale on Safepal (https://safepal.io/), the first digital card application of the Bep20 network, which was also mentioned in Tokenomics, before it was released. to be listed on the stock exchange.

🌉Presale price: Last-PS 0.10$ 27.06.2024 13:00 GMT+1


🚀 Exchanges to be listed: Binance, Bybit, Bingx, OKx, MEXc and others...


🤑 Pre-Sale Detailed Explanation Guide:

1- Download SafePal
   
     ➜ for Computer/Windows (https://safepal.io/)
     
        ➜ for Android  (https://play.google.com/store/apps/details?id=io.safepal.wallet&hl=en_US)
        
            ➜ for iOS (https://apps.apple.com/us/app/safepal-crypto-wallet-btc-nft/id1548297139)

And create awallet.

2- Send $BNB tokens to your wallet via BEP20 network.

3- Copy the $LISTA token pre-sale contract address from BscScan (https://bscscan.com/token/0x3b148653f0170406b15c3f10c7beeda156857ed3#balances).

4- Click on the add token in your  Safepal wallet and enter asset management.

5- Paste the $LISTA token pre-sale contract address and add it to your wallet.

6- Copy the Pre-Sale address and Contrat Owner Adress (Click on the token, enter the services section, enter the token detection section and scroll down. The contract owner address is there.)
 
7- Press send and send your $BNB tokens to the Pre-Sale address you copied.

8- Your $LISTA coins will arrive in your wallet within a few minutes at the latest.

9- Remember that you will use the BEP20 network to send the $LISTA coin to your Safepal wallet or to the listed exchanges.

## Table of contents

[Website](https://lista.org) 

[Twitter](https://twitter.com/LISTA_DAO)

[Telegram](https://twitter.com/LISTA_DAO) 🏴󠁧󠁢󠁥󠁮󠁧󠁿

[Telegram Chinese](https://t.me/ListaDAO_CN) 🇨🇳

[Telegram Turkey](https://t.me/listaturkiyeresmi) 🇹🇷

[Discord](https://discord.gg/listadao )

[Medium Page](https://medium.com/listadao)


## Requirements

Ready to build on **macOS** and **Linux**.

To build on **Windows**, you will also need:

- Any terminal emulator with bash (Git Bash, MinGW, Cygwin)
- A zip utility (for several commands)

## Local Setup

```sh
mv .env.example .env

npm i
```

## Dev Mode

```sh
npm run dev
```

## Linux Desktop Troubleshooting

**If the app does not start after click:**

Install the [FUSE 2 library](https://github.com/AppImage/AppImageKit/wiki/FUSE).

**If the app does not appear in the system menu or does not process ton:// and TON Connect deeplinks:**

Install [AppImageLauncher](https://github.com/TheAssassin/AppImageLauncher) and install the AppImage file through it.

```bash
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt-get update
sudo apt-get install appimagelauncher
```

**If the app does not connect to Ledger:**

Copy the udev rules from the [official repository](https://github.com/LedgerHQ/udev-rules) and run the file `add_udev_rules.sh` with root rights.

```bash
git clone https://github.com/LedgerHQ/udev-rules
cd udev-rules
sudo bash ./add_udev_rules.sh
```

## Support Us

If you like what we do, feel free to contribute by creating a pull request, or just support us using this SafePaL wallet: `0xcBBfaCACdbb4f208342E85Acf168DFea0e119848 `. We appreciate it a i


## Contracts

### MakerDAO contracts
* **abaci** — price decrease function for auctions
* **clip** — liquidation 2.0 mechanics
* **dog** — starts auctions
* **join** — ERC20 token adapters
* **jug** — stability fee collector
* **spot** — oracle price fetch
* **hay** — stable coin
* **vat** — core cdp vault
* **vow** — vault balance sheet. Keeps track of surplus&debt

### Rewards contracts
* **HelioRewards** — rewards distribution module
* **HelioToken** — rewards token
* **HelioOracle** - rewards token oracle

### Ceros contracts
* **CerosRouter** — finds the best way to obtain aBNBc.
* **CeToken** — underlying collateral token inside makerDao
* **CeVault** — stores obtained aBNBc
* **HelioProvider** — wraps BNB into ceABNBc via _CerosRouter_

### Interaction contract
* **Interaction** — proxy for makerDao contracts. 
Provide deposit&withdraw and borrow&payback functions for end users
* **AuctionProxy** — entrypoint for auction methods.
End users can start auctions and participate in it via this contract

### Unit Testing
The core MakerDAO contracts are already battletested and the mock folders are excluded from tests.

## Installation
To install Helio, clone the Helio repository and run the following commands:
```
git clone https://github.com/helio-money/helio-smart-contracts.git

cd helio-smart-contracts  

npm install
```
Install Hardhat :
```
npm install --save-dev hardhat
```

Install Yarn:
```
npm install --global yarn
```

Install dotenv:
```
npm install dotenv --save
```

`cp .env.example .env`
edit .env with your variables 

## Contributing
Helio is an open source project, and we welcome contributions from the community. If you would like to contribute to Helio, please see the Helio contribution guidelines.

## License
Helio is licensed under the ISC license.

