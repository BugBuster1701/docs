## Installation von PHPUnit

Die Installation von PHPUnit kann auf drei Arten erledigt werden. Über den Paketmanager von Ubuntu, manuell als "phar" Datei oder mit Composer als globale Installation.

### Installation über Paketmanager

    sudo apt-get install phpunit

Damit liegt dann die ausführbare Datei in ```/usr/bin/phpunit```.
Zum Testen mal die Version anzeigen lassen:

    phpunit --version

### Installation manuell als phar 

Über die Homepage von PHPUnit ```https://phpunit.de/``` die aktuelle stable laden

    curl -L -o phpunit.phar https://phar.phpunit.de/phpunit.phar
    chmod +x phpunit.phar
    sudo mv phpunit.phar /usr/local/bin/phpunit

oder mit wget statt curl:

    wget https://phar.phpunit.de/phpunit.phar
    chmod +x phpunit.phar 
    sudo mv phpunit.phar /usr/local/bin/phpunit 

Damit liegt dann die ausführbare Datei in ```/usr/local/bin/phpunit```.
Zum Testen mal die Version anzeigen lassen:

    phpunit --version

### Installation global via Composer

In dem Beispiel die aktuelle 4.7.x Version:

    composer global require "phpunit/phpunit=4.7.*"

Achtung: Hier muss nun ```~/.composer/vendor/bin/``` im Suchpfad liegen!

