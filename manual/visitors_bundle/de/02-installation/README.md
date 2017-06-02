# Installation von Visitors Bundle

Es gibt zwei Arten der Installation.
* mit dem Contao-Manager, nur für die Contao Managed-Editon
* über die Kommandozeile, für Contao Standard-Edition und Managed-Editon

**Hinweis:** Visitors Bundle ist abhängig von den Erweiterungen 
"BotDetection Bundle" und "phpoffice/phpexcel", diese werden automatisch mit installiert.

Link zu Packagist: [Visitors Bundle auf Packagist.org][1]


## Installation über Contao-Manager

* Suche das Paket: `bugbuster/contao-visitors-bundle`
* Installation der Erweiterung
* Klick auf "Install Tool"
* Anmelden und Datenbank Update durchführen


## Installation über die Kommandozeile

### Installation in einer Contao Managed-Edition

Installation in einer Composer-basierenden Contao 4.3+ Managed-Edition:

* `composer require "bugbuster/contao-visitors-bundle"`
* Aufruf http://deinedomain/contao/install
* Datenbank Update durchführen


### Installation in einer Contao Standard-Edition

Installation in einer Composer-basierenden Contao 4.3+ Standard-Edition:

* `composer require "bugbuster/contao-visitors-bundle"`

Einfügen in `app/AppKernel.php` folgende Zeile am Ende des Array `$bundles`:

`new BugBuster\VisitorsBundle\BugBusterVisitorsBundle(),`

Cache leeren und neu anlegen lassen:

* `vendor/bin/contao-console cache:clear --env=prod`
* `vendor/bin/contao-console cache:warmup -e prod`
* Aufruf http://deinedomain/contao/install
* Datenbank Update durchführen


[1]: https://packagist.org/packages/bugbuster/contao-visitors-bundle
