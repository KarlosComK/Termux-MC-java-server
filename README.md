Hi! ins this guide, i will teach you how to make a Minecraft server on termux!

# Requirements 
a phone with at least 2gb of ram and termux app from **FDroid**

# Part 1

Step 1:
update and upgrade the repositories
```bash
pkg update -y && pkg upgrade -y
```
Step 2:
Download PRoot-distro using the command
```bash
pkg install proot-distro
```
Step 3:
install Ubuntu by running this command
```bash
proot-distro install Ubuntu
```

# Part 2

## Step 4
When the ubuntu download end, execute the command
```bash
proot-distro login ubuntu
```

## Step 5
When you enter the ubuntu terminal (with the text root@localhost) update and upgrade the repositorys with the command 
```bash
apt update -y && apt upgrade -y
```
## Step 6
When you update the repositories,install the jdk you want (replace the **8** with the version of the jdk you want or need)
```bash
apt install openjdk-8-jre-headless
```
## Step 7
Make a folder for the server (replace the **server** text with the name of the folder you want)
```bash
mkdir server
```
## Step 8
Enter the directory by executing this command (notice you have replace de "server" with the name of the folder you created)
```bash
cd server
```
# Step 9
Download a Plugin loader or Mod loader (if you want) or the official Minecraft server .jar file by Mojang (make sure you have wget installed on the ubuntu distro, if you dont have the wget installed, run the command "apt install wget").
```bash
wget **(the link of the mod loader or plugin loader)**
```
## Step 10
Accept the EULA terms and run the server 
```bash
java -jar **(name of the PL ou ML)**.jar nogui
```
When the server run for the first time, is normal it crash, bc you need to accept the EULA terms

# Step 11
Accept the EULA terms running this command
```bash
echo "eula=true" > eula.txt
```
# Congratulations!
now you can run you server! to run you server, execute the command
```bash
java -Xms512M -Xmx1G -jar server.jar nogui
```
(notice that you have to replace the numbers on -Xms512M and -Xmx1G of the number of ram you want do allocate and replace the server.jar with the name of the .jar file of the server)

# Play with friends 
want to play with friends on your server?
check out [this guide](TUNNELING.md)