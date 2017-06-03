## Bot Detection off

Who wants to count the hits from bots and search engines, can switch off the 
bot detection. This is made by the file localconfig.php.

> **Caution** This applies to all Visitors modules when several front end modules have been created!

The following entry to the end of localconfig.php (after: ### INSTALL SCRIPT STOP ### ) 
switching off the bot detection:
```
	$GLOBALS['TL_CONFIG']['mod_visitors_bot_check'] = false;
```
