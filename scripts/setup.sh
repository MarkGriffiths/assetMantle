make all

rm -rf ~/.assetNode
rm -rf ~/.assetClient

assetNode init --chain-id test test
assetClient keys add test
assetNode add-genesis-account test 100000000000000stake
assetNode gentx --name test --amount 1000000000stake
assetNode collect-gentxs