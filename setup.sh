echo "==============================="
echo "=== DEPENDENCIES INSTALLLER ==="
echo "==============================="

sleep 3

echo "UPGRADING PACKAGES AND UPDATING REPOSITORIES"

pkg update -y && pkg upgrade -y
pkg install wget curl nano -y

echo "INSTALLING OPENJDK 8 FOR MC VERSIONS BELOW 1.17"

wget https://raw.githubusercontent.com/MasterDevX/java/master/installjava && bash installjava

echo "INSTALLATION COMPLETE"
