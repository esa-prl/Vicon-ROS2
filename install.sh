echo "Installing application, please wait"
sudo cp src/DataStreamSDK/libViconDataStreamSDK.so /usr/lib
echo "."
sudo cp src/DataStreamSDK/libboost_system-mt.so.1.58.0 /usr/lib
echo "."
sudo cp src/DataStreamSDK/libboost_thread-mt.so.1.58.0 /usr/lib
echo "."
sudo chmod 0755 /usr/lib/libViconDataStreamSDK_CPP.so /usr/lib/libboost_system-mt.so.1.58.0 /usr/lib/libboost_thread-mt.so.1.58.0
echo "." 
sudo ldconfig
echo "."
cd src/nexus_interface/ && make && cd ../..
echo "Installlation finished"
