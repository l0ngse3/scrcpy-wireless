DEVICE_IP=$(./adb.exe shell ip route | awk -F' ' '{print $9}')
echo $DEVICE_IP
./adb.exe tcpip 5555
echo "Unplug your phone"
read
./adb.exe connect $DEVICE_IP:5555

./scrcpy