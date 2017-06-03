## Bot Detection abschalten

Wer die Zugriffe von Bots und Suchmaschinen mitzählen möchte, kann die BotDetection 
abschalten. Das geht allerdings nicht über das Backend, sondern muss über die 
localconfig.php passieren.

**Achtung:** Das gilt dann für alle Besucher-Module, falls mehrere Frontend Module angelegt wurden!

Folgender Eintrag ans Ende der localconfig.php (nach: ### INSTALL SCRIPT STOP ### ) bewirkt das Ausschalten:
```
    $GLOBALS['TL_CONFIG']['mod_visitors_bot_check'] = false;
```
