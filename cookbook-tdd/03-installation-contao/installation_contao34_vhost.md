## Installation von Contao 3.4 als Apache namesbasierter virtueller Host

Definitionen, änderbar:

- Installationspfad /var/www/contao4go/contao34
- WebRoot /var/www/contao4go/contao34
- Servername: contao34.php-ci.lan
- Server-IP: 192.168.17.201
- User Login: bibo

### Webroot anlegen: 

    sudo mkdir -p /var/www/contao4go/contao34

### Anlegen eines Virtuellen Hostes für Contao 3.4:

    sudo vi /etc/apache2/sites-enabled/contao34.conf 

Darin kommt dann:

```
<VirtualHost *:80>
        # The ServerName directive sets the request scheme, hostname and port that
        # the server uses to identify itself. This is used when creating
        # redirection URLs. In the context of virtual hosts, the ServerName
        # specifies what hostname must appear in the request's Host: header to
        # match this virtual host. For the default virtual host (this file) this
        # value is not decisive as it is used as a last resort host regardless.
        # However, you must set it for any further virtual host explicitly.
        ServerName contao34.php-ci.lan

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/contao4go/contao34

        <Directory />
                Options FollowSymLinks
                AllowOverride all
        </Directory>
        <Directory /var/www/contao4go/contao34/>
                Options Indexes FollowSymLinks MultiViews
                AllowOverride all
                Order allow,deny
                allow from all
                Require all granted
        </Directory>

        # Available loglevels: trace8, ..., trace1, debug, info, notice, warn,
        # error, crit, alert, emerg.
        # It is also possible to configure the loglevel for particular
        # modules, e.g.
        #LogLevel info ssl:warn

        ErrorLog ${APACHE_LOG_DIR}/contao34-error.log
        CustomLog ${APACHE_LOG_DIR}/contao34-access.log combined

        # For most configuration files from conf-available/, which are
        # enabled or disabled at a global level, it is possible to
        # include a line for only one particular virtual host. For example the
        # following line enables the CGI configuration for this host only
        # after it has been globally disabled with "a2disconf".
        #Include conf-available/serve-cgi-bin.conf
</VirtualHost>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
```

Die Konfiguration aktivieren:

    sudo a2ensite contao34.conf
    sudo service apache2 restart

### System Anpassungen

Damit Contao/PHP-FPM auch unter meiner Nutzer ID was schreiben darf, sind noch einge Anpassungen nötig.

    sudo chown bibo:bibo /var/www/contao4go/contao34

Falls bereits eine andere Contao Version nach dieser Anleitung installiert wurde, weiter bei [Anpassung HOST Rechner](installation_contao34_vhost.md#anpassung-host-rechner).

    sudo vi /etc/php5/fpm/pool.d/www.conf

Darin den User auf bibo setzen, damit PHP-FPM/Contao schreiben darf.

    user = bibo
    group = bibo

Die Socket Datei läuft unter dem User des Apache.

    ls -l /var/run/php5-fpm.sock
    srw-rw---- 1 www-data www-data 0 Jun  7 17:24 /var/run/php5-fpm.sock

Daher in /etc/group mein Login bibo in der Gruppe www-data angängen:

    sudo usermod -aG www-data bibo

Nun nochmal zu Sicherheit PHP neu starten:

    sudo service php5-fpm restart

### Anpassung HOST Rechner

Auf dem HOST Rechner, bzw. auf dem Rechner mit dem man von außen auf die VM und damit Contao zugreifen will, die hosts Datei anpassen, bei mir auch ein Linux Rechner:

    sudo vi /etc/hosts

Darin:

    192.168.17.201      contao34.php-ci.lan

### Installation Contao 3.4.5 

```
cd /tmp
curl -L https://download.contao.org/3.5.0 | tar xpz
cd contao-3.5.0
mv *.* /var/www/contao4go/contao34/
mv .htaccess.default /var/www/contao4go/contao34/
mv .htaccess.default /var/www/contao4go/contao34/
```

Vor Aufruf des Installers prüfen wir erst Mal, ob alles OK ist dafür.

### Contao-Check installieren

```
cd /tmp
curl -L -o contao-check.zip https://github.com/contao/check/zipball/master
unzip contao-check.zip
cd contao-check-[TAB]
mv check /var/www/contao4go/contao34/
```

Aufruf des Checks:

   http://contao34.php-ci.lan/check/

Hier sollte nun alles grün sein, sonst muss das erst behoben werden.
Die Installation damit prüfen wäre jetzt sinnvoll.

### Abschluss

Über phpMyAdmin eine Datenbank und Nutzer anlegen, dann Contao Installer aufrufen:

    http://contao34.php-ci.lan/contao/install.php

