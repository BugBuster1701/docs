## Wechsel zu PHP-FPM

Wie bei der Installation der VM beschrieben, habe ich die LAMP Auswahl aktiviert, um eine Basis an Apache, MySQL, PHP zu haben.

Ich möchte aber PHP von mod_php auf PHP-FPM umstellen. (FastCGI ProcessManager)

Damit Apache damit klar kommt brauchen wir "libapache2-mod-fastcgi"


    sudo apt-get install libapache2-mod-fastcgi

Dazu müssen die Multiverse Pakete aktiviert sein in der /etc/apt/sources.list, bei mir waren die es bereits.

    deb http://us.archive.ubuntu.com/ubuntu/ trusty multiverse
    deb-src http://us.archive.ubuntu.com/ubuntu/ trusty multiverse
    deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse
    deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse


Nun kommt das PHP-FPM

    sudo apt-get install php5-fpm

Jetzt eine Konfiguration anlegen dafür im Apache Zweig

    sudo vi /etc/apache2/conf-available/php5-fpm.conf

darin:

    <IfModule mod_fastcgi.c>
    AddHandler php5-fcgi .php
    Action php5-fcgi /php5-fcgi
    Alias /php5-fcgi /usr/lib/cgi-bin/php5-fcgi
    FastCgiExternalServer /usr/lib/cgi-bin/php5-fcgi -socket /var/run/php5-fpm.sock -pass-header Authorization
    
    <Directory /usr/lib/cgi-bin>
        Require all granted
    </Directory>
    
    </IfModule>


Nun das ganze aktivieren, die benötigten Module und die Konfiguration

    sudo a2enmod actions fastcgi alias
    sudo a2enconf php5-fpm

Wir brauchen noch weitere PHP Plugins:

    sudo apt-get install php5-gd php5-mysql php5-sqlite php5-intl php5-mcrypt php5-curl php5-imap 

mcrypt muss aktiviert werden:

    sudo php5enmod mcrypt

Zum Schluss nun Apache und PHP-FPM neu starten:

    sudo service apache2 restart
    sudo service php5-fpm restart

Zum Testen legen wir eine PHP Datei an:

    sudo vi /var/www/html/info.php

Mit dem Inhalt:

    <?php phpinfo(); ?>

Aufruf mit: ```http://[SERVER_IP_ADDRESS]/info.php```
Diese Zeile muss nun auftauchen als dritte:

    Server API 	FPM/FastCGI 

Wenn da steht:

    Server API 	Apache 2.0 Handler 

ist warscheinlich parallel noch das Apache PHP Modul installiert:

    sudo a2dismod php5
    sudo service apache2 restart
    
Nun sollte es passen.
