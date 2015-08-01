## Banner Block Time für Views ändern

Wie schon erwähnt, wird ein Banner der mehrmals innerhalb von 5 Minuten angezeigt
wird, nur einmal gezählt. Durch einen Eintrag in der localconfig.php kann das
geändert werden. Angaben dort erfolgen in Minuten, dabei muss die Zahl > 0 sein,
sonst wird automatisch wieder der Defaultwert (5) genommen.

> **Warning** Achtung: Das gilt dann für alle Banner Module falls mehrere Frontend Module angelegt wurden!

Folgender Eintrag ans Ende der localconfig.php (nach: ### INSTALL SCRIPT STOP ### )
bewirkt eine Änderung auf 5 Minuten:


```php
$GLOBALS['TL_CONFIG']['mod_banner_block_time'] = 5;
```
