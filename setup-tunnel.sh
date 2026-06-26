clear

echo "==============================="
echo "    PLAYIT.GG TUNNEL SETUP     "
echo "==============================="
echo "Configuring the tunnel for your server..."
sleep 1

echo -e "\n[1/2] Checking playit installation..."
if ! command -v playit-cli & > /dev/null; then
    echo "Installing missing packages..."
    pkg install tur-repo
    pkg install playit -y
else
    echo "Playit is already installed!"
fi

echo -e "\nATTENTION!"
echo "A link will appear below. Copy it, paste it into your browser,"
echo "and log in to your Playit.gg account to claim your agent."
echo "After claiming, come back to Termux and press CRTL + C."
echo "--------------------------------------------------------------"
read -p "Press ENTER on your keyboard to generate the pairing link..."

playitd &
sleep 1
playit-cli
