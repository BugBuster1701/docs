---
title: "Bot Detection abschalten"
description: ""
url: "tutorials/bot-detection-abschalten"
weight: 20
---

Wer die Zugriffe von Bots und Suchmaschinen auf die Banner mitzählen möchte,
kann die Bot Detection abschalten. Das geht allerdings nicht über das Backend,
sondern muss über die localconfig.php passieren.


{{% notice warning %}}
Achtung: Das gilt dann für alle Banner Module, falls mehrere Frontend Module angelegt wurden!
{{% /notice %}}


Folgender Eintrag ans Ende der localconfig.php (nach: ### INSTALL SCRIPT STOP ### )
bewirkt das Ausschalten:

```php
$GLOBALS['TL_CONFIG']['mod_banner_bot_check'] = false;
```
