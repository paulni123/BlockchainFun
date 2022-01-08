from scripts.helpful_scripts import get_account
from brownie import OurToken, network, config
from web3 import Web3
import time

INITIAL_SUPPLY = Web3.toWei(1000, "ether")


def deploy_token():
    account = get_account()
    token = OurToken.deploy(
        INITIAL_SUPPLY,
        {"from": account},
        publish_source=config["networks"][network.show_active()].get("verify", False),
    )
    time.sleep(1)
    print("Deployed OurToken!")
    return token


def main():
    deploy_token()
