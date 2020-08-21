---
title: "Banner Block Time für Views ändern"
description: ""
url: "tutorials/banner-block-time-fuer-views-aendern"
weight: 10
---

Wie schon erwähnt, wird ein Banner, der mehrmals innerhalb von 5 Minuten angezeigt wird,
nur einmal gezählt. Durch einen Eintrag in der localconfig.php kann das
geändert werden. Angaben dort erfolgen in Minuten, dabei muss die Zahl > 0 sein,
sonst wird automatisch wieder der Defaultwert (5) genommen.

{{% notice warning %}}
Achtung: Das gilt dann für alle Banner Module, falls mehrere Frontend Module angelegt wurden!
{{% /notice %}}


Folgender Eintrag ans Ende der localconfig.php (nach: ### INSTALL SCRIPT STOP ### )
bewirkt eine Änderung auf 10 Minuten:


```php
$GLOBALS['TL_CONFIG']['mod_banner_block_time'] = 10;
```
