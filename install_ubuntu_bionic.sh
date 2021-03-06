echo "Installing dependencies, please wait...\n"
sudo apt update && sudo apt install -y curl gnupg2 lsb-release
curl http://repo.ros2.org/repos.key | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt update
sudo apt install -y ros-dashing-ros-base
sudo apt install -y python3-colcon-common-extensions
sudo apt install -y cmake
sudo apt install wx-common wx3.0-headers libwxgtk3.0-dev libwxgtk-media3.0-dev libwxgtk3.0-gtk3-dev libcanberra-gtk-module libcanberra-gtk3-module
sudo ln -sv /usr/include/wx-3.0/wx /usr/include/wx
source /opt/ros/dashing/setup.bash
echo "Installation finished\n"