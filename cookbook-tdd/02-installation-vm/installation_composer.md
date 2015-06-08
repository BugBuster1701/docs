## Composer Installation

Für die späteren Tests wird Composer benötigt, speziell für die Installation der Erweiterungen die wie testen wollen.

```
cd /tmp
curl -sS https://getcomposer.org/installer | php
sudo mv /tmp/composer.phar /usr/local/bin/
cd /usr/local/bin/
sudo ln -s composer.phar composer
cd
```

Testen mit:

    php /usr/local/bin/composer -v

oder:

    composer -v

