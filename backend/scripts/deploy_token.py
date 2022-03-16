from brownie import TokenERC20
from scripts.utils import get_account, INITIAL_VALUE


def deploy_token():
    account = get_account()
    tokenERC20 = TokenERC20.deploy(INITIAL_VALUE, {"from": account})
    return tokenERC20


def main():
    deploy = deploy_token()
    print(deploy.name())
