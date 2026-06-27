echo "==============================="
echo "=== DEPENDENCIES INSTALLLER ==="
echo "==============================="

sleep 3

echo "UPGRADING PACKAGES AND UPDATING REPOSITORIES"

pkg update -y && pkg upgrade -y

echo "INSTALLING DEPENDENCIES"

pkg install wget curl nano -y

echo "INSTALLATION COMPLETE"
