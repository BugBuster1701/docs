---
title: "Banner Bundle deinstallieren"
description: "Deinstallation des Contao 4 Banner Bundles."
url: "installation/contao-banner-bundle-deinstallieren"
weight: 80
---


## Deinstallation mit dem Contao Manager

Wenn du die Erweiterung »contao-banner-bundle« deinstallieren möchtest, wechsle im Contao Manager in den Reiter »Pakete« und klicke auf die Schaltfläche »Entfernen« neben der Erweiterung. 

Klicke auf »Änderungen anwenden« um die Deinstallation zu starten. Die Deinstallation kann nun mehrere Minuten in 
Anspruch nehmen. 

Sobald die Erweiterung deinstalliert worden ist, musst du das Contao-Installtool aufrufen um die Datenbank, falls nötig, zu aktualisieren.


## Deinstallation über die Kommandozeile {#deinstallation-ueber-die-kommandozeile}

Der Befehl `remove` entfernt die Erweiterung aus der `composer.json` und löscht den Code aus dem Projekt.


```bash
php composer.phar remove bugbuster/contao-banner-bundle
```

Sobald die Erweiterungen deinstalliert worden sind, musst du das Contao-Installtool aufrufen um die Datenbank, falls nötig, zu aktualisieren.
