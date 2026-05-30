# How to make you termux server public to your friends play with you!

Since mobile devices dont have public ip, you have to use a **proxy/vpn** or a *tunnel* to friends play with you in different internet.

## Option 1: Playit.gg for linux (Highly recommend)
**Playit.gg** is the best option because it make a tunnel with the ip of your device, and "make it public" to anyone use or enter the server

# Step 1: Install Playit.gg
open a new session in termux, and execute the command
```bash
proot-distro login ubuntu
```
When you enter the Ubuntu, enter the server directory running this command 
```bash
cd server
```

# Step 2
When you enter the server directory, execute this command to install Playit.gg if your device is 64bit
```bash
wget https://github.com/playit-cloud/playit-agent/releases/download/v0.17.0/playit-linux-aarch64
``` 
or this command if you device is 32bit
```bash
wget https://github.com/playit-cloud/playit-agent/releases/download/v0.17.0/playit-linux-armv7
```

# Step 3
When the download of playitgg end, execute this command if your device is 64bit (if it dont work remove the "setup" name)
```bash
./playit-linux-aarch64 setup
```
or execute this command if your device is 32bit (if it **dont work** remove the "setup" name)
```bash
./playit-linux-armv7 setup
```
# Step 4
if the commands above didn't work even removing the "setup" name, we need to give execution permissions for playit, to make this, we have to execute this command if your device is 64bit
```bash
chmod +x playit-linux-aarch64
```
or this command if your device is 32bit
```bash
chmod +x playit-linux-armv7
```
# Step 5
if the command to execute Playit work, you will need to setup it, to setup it, we will need to copy the claim agent link that playit generated, and copy it in a browser (like google chrome) and claim the agent (i dont remember how to dow this, so setup it alone).

# Step 6
When you end to setup playit, its hour to test if it works! to do this, run the Minecraft server in one session, and playit in other session. When you run the playit, it will generate a ip of your server, this ip is the address of your server! 

# Congratulations, now you can share the ip and play with friends!
