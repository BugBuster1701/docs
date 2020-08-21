---
title: "Bot Detection off"
description: ""
url: "tutorials/bot-detection-off"
weight: 20
---

Who wants to count the hits from bots and search engines on the banners can
switch off the bot detection. This is done by the file localconfig.php.

{{% notice warning %}}
Caution: This applies to all Banner modules, when several front end modules have been created!
{{% /notice %}}


The following entry to the end of localconfig.php
(after: ### INSTALL SCRIPT STOP ### ) switching off the bot detection:

```php
$GLOBALS['TL_CONFIG']['mod_banner_bot_check'] = false;
```
