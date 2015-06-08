## Ubuntu 15.04 Server als Basis

- Download Ubuntu Server 64 Bit, Version 15.04 als ISO Datei
- Neue VM angelegt in Oracle VM VirtualBox
    - System: Ubuntu 64 Bit
    - Plattenplatz: 20 GByte, mal sehen wie lange das reicht
    - Als sekundären Datenträger statt des CD ROM die ISO eingebunden
- Start der VM und Installation starten
    -  [ x ] LAMP, gleich mit installiert auch wenn ich später da noch was grundlegendes dran ändere
    - IP Adresse aus dem LAN, kein NAT, finde ich praktischer
    - SSH Server aktiviert
    - SAMBA aktiviert, mal sehen ob ich es brauche
    - Hostname: php-ci , kann individuell gewählt werden

Abschließend:

- Login in die VM

```
sudo apt-get update
sudo apt-get upgrade
sudo reboot
```

