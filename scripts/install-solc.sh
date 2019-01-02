
INSTALLPATH=/usr/local/bin

echo
echo install solidity compiler solc into $INSTALLPATH/ 
echo 
read -p "Press enter to continue"

# someone should PLEASE create a Debian specific installation routine
# see https://solidity.readthedocs.io/en/latest/installing-solidity.html 
# and https://github.com/ethereum/solidity/releases

wget https://github.com/ethereum/solidity/releases/download/v0.4.24/solc-static-linux
chmod 755 solc-static-linux 
echo I hope $INSTALLPATH/ is in your PATH?
echo $PATH
sudo mv solc-static-linux $INSTALLPATH/
sudo ln -s -f $INSTALLPATH/solc-static-linux $INSTALLPATH/solc
solc --version