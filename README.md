Hi! ins this guide, i will teach you how to make a Minecraft server on termux!

# Requirements 
a phone with at least 3gb of ram and termux app from **FDroid**

# Executing the automatized script:

you can execute my automatized script that i made, but i recommend you to manually make the server, BUT if you want to automate the things, just execute the commands:
```bash
curl -sL https://github.com/KarlosComK/Termux-Minecraft-server/main/install.sh -o install.sh && chmod +x install.sh && ./install.sh
```
and
```bash
curl -sL https://github.com/KarlosComK/Termux-Minecraft-server/main/setup-tunnel.sh" -o setup-tunnel.sh && chmod +x setup-tunnel.sh && ./setup-tunnel.sh
```

# Making manually a Minecraft server natively on termux:

## to make a Minecraft server natively on termux, without PRoot-distro, the process is very easy

# Part 1 (preparing the ambient)

## Step 1

first, update the repositories and upgrade the packages (obviously)
```bash
pkg update -y && pkg upgrade -y
```

## Step 2

now, install the openjdk (unfortunately termux dont have openjdk-8, so i think you cant launch version below 1.17)
```bash
pkg install openjdk-(the version you need, eg: 17) -y
```

now, if you execute the command "java --version", it will show "java runtime 17" or something like that

# Part 2 (making the server)

## Step 3

now, if you want, make a dedicated server directory for the Minecraft server by executing the command (i recommend to do this)
```bash
mkdir server
```
-# notice you can replace the server name with the name you want for the server directory

## Step 4

now, download the official Minecraft jar server or a plugin loader/mod loader by executing the command
```bash
wget (the link of the jar)
```
-# if the command above don't work, install wget with the command "pkg install wget" and try again

# Part 3 (finishing the server)

## Step 5

now, lets launch the server to generate the "eula.txt" file and accept the EULA
```bash
java -jar (name of the jar file)
```
## Step 6

when you execute this command for the first time, its normal to the server crash because of the EULA, so lets accept the EULA by executing the command
```bash
echo "eula:true" > eula.txt
```

# Congratulations, now you have a dedicated Minecraft java server!




# Play with friends 
want to play with friends on your server?
check out [this guide](TUNNELING.md)
