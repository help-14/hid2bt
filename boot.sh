#Stop the background process
sudo hciconfig hci0 down
sudo systemctl daemon-reload
sudo /etc/init.d/bluetooth start
# Update  mac address
./updateMac.sh
#Update Name
./updateName.sh HID2BT
#Get current Path
cd ~/hid2bt/
export C_PATH=$(pwd)

cd $C_PATH/server && sudo ./btk_server.py &
cd $C_PATH/keyboard && sudo ./kb_client.py
#cd $C_PATH/mouse && sudo ./mouse_client.py
