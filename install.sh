echo "====================================="
echo "== WELCOME TO THE SERVER INSTALLER =="
echo "====================================="

echo "UPDATING THE REPOSITORIES AND UPGRADING PACKAGES..."

pkg update -y && pkg upgrade -y

echo "INSTALLING OPENJDKs..."

pkg install openjdk-17 openjdk-21 openjdk-25 -y

echo "MAKING DEDICATED SERVER DIRECTORY"

mkdir MinecraftServer

cd MinecraftServer

echo "SELECT VANILLA, MOD LOADER OR PLUGIN LOADER"

echo "1) Vanilla"
echo "2) Modloader (FORGE, FABRIC, NEOFORGE, ETC)"
echo "3) Pluginloader (PAPER, PURPUR, BUKKIT, ETC)"

read -p "CHOOSE AN OPTION (1-3): " TYPE

case $TYPE in
    1)
        clear
        echo "=== YOU SELECTED VANILLA ==="
        echo "You can type any version (eg: 1.18.2)"
        read -p "Type the version: " VERSION
        read -p "Paste the Vanilla version link: " LINK
        if [ -z "$LINK" ]; then
            echo "ERROR: Link cannot be empty!"
            sleep
            exit 1
        fi

        if echo "$LINK" | grep -Ei "forge|fabric|neoforge|quilt|purpur|paper|bukkit|spigot" > /dev/null; then
            echo -e "\nERROR: You selected VANILLA, but pasted a mod/plugin loader link!"
            sleep 3
        else
            echo -e "\nLink validated! Downloading Vanilla $VERSION"
            curl -L -o server.jar "$LINK"
        fi
        ;; 


     2)
        clear
        echo "=== YOU SELECTED MODLOADER ==="
        echo "You can type any version (eg: 1.18.2)"
        read -p "Type the version: " VERSION 
        read -p "Paste the Modloader version link: " LINK
        if [ -z "$LINK" ]; then
            echo "ERROR: Link cannot be empty!"
            sleep 1
            exit 1
        fi

        if echo "$LINK" | grep -Ei "forge|fabric|neoforge|quilt" > /dev/null && echo "$LINK" | grep -F "$VERSION" > /dev/null; then
            echo -e "\nLink validated! Downloading modloader $VERSION"
            curl -L -o server.jar "$LINK"
        else
            echo -e "\nERROR: invalid link! Make sure it is a modloader link and matches version $VERSION."
            sleep 3
        fi
        ;;

     3)
        clear
        echo "=== YOU SELECTED PLUGINLOADER ==="
        echo "You can type any version (eg: 1.18.2)"
        read -p "Type the version: " VERSION
        read -p "Paste the Pluginloader version link: " LINK
        if [ -z "$LINK" ]; then
            echo "ERROR: Link cannot be empty!"
            sleep 1
            exit 1
        fi

        if echo "$LINK" | grep -Ei "bukkit|spigot|paper|purpur" > /dev/null && echo "$LINK" | grep -F "$VERSION"  > /dev/null; then
            echo -e "\nLink validated! Downloading pluginloader $VERSION"
            curl -L -o server.jar "$LINK"
        else
            echo -e "\nERROR: invalid link! Make sure it is a modloader link and matches version $VERSION"
            sleep 3
        fi
        ;;

     *)
        echo "Invalid option!"
        exit 1
        ;;
esac

echo -e "\nGenerating server configuration files..."
sleep 1

echo "eula=true" > eula.txt

clear
echo "==================================="
echo "    PERFOMANCE & RAM ALLOCATION    "
echo "==================================="
echo "How much total RAM does your phone have?"
echo "1) 3GB RAM"
echo "2) 4GB RAM"
echo "3) 6GB RAM or more"
read -p "Choose your RAM profile (1-3): " RAM_CHOICE

case $RAM_CHOICE in
    1)
       MAX_RAM="1000M"
       MIN_RAM="500M"
       ;;
    2)
       MAX_RAM="1500M"
       MIN_RAM="1000M"
       ;;
    3)
       MAX_RAM="2500M"
       MIN_RAM="1500M"
       ;;
    *)
       MAX_RAM="1000M"
       MIN_RAM="500M"
       ;;
esac

cat << EOF > start.sh
clear
echo "======================================="
echo "       STARTING MINECRAFT SERVER       "
echo "======================================="
java -Xmx${MAX_RAM} -Xms${MIN_RAM} -jar server.jar nogui
EOF

chmod +x start.sh
