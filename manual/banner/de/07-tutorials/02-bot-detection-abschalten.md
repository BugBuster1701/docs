## Bot Detection abschalten

Wer die Zugriffe von Bots und Suchmaschinen auf die Banner mitzählen möchte,
kann die Bot Detection abschalten. Das geht allerdings nicht über das Backend
sondern muss über die localconfig.php passieren.

> **Warning** Achtung: Das gilt dann für alle Banner Module falls mehrere Frontend Module angelegt wurden!

Folgender Eintrag ans Ende der localconfig.php (nach: ### INSTALL SCRIPT STOP ### )
bewirkt das Ausschalten:

```php
$GLOBALS['TL_CONFIG']['mod_banner_bot_check'] = false;
```
