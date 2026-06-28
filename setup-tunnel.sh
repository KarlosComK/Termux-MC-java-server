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
sleep 2
echo "A link will appear below. Copy it, paste it into your browser,"
sleep 2
echo "and log in to your Playit.gg account to claim your agent."
sleep 2
echo "After claiming, come back to Termux and press CRTL + C."
sleep 2
echo "--------------------------------------------------------------"
echo "Press ENTER on your keyboard to generate the pairing link..."
read -r _ </dev/tty

echo "Executing playit.gg..."

playitd
