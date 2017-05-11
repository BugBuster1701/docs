## Change Banner Block Time for views

As written in the beginning, when a banner is displayed multiple times within
5 minutes, this banner is only counted once. With an entry in the localconfig.php
can change that. The values be there in minutes, the number must be > 0,
otherwise will be automatically taken back to the default value (5).

> **Warning** Caution: This applies to all Banner modules when several front end modules have been created!

The following entry to the end of localconfig.php
(after ### INSTALL SCRIPT STOP ### ) causes a change to 5 minutes:

```php
$GLOBALS['TL_CONFIG']['mod_banner_block_time'] = 10;
```
