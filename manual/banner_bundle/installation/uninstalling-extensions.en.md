---
title: "Uninstall Banner Bundle"
description: "Uninstalling the Contao 4 Banner bundle."
url: "installation/contao-banner-bundle-uninstalling"
weight: 80
---


## Uninstalling with the Contao Manager

If you want to uninstall the "contao-banner-bundle" extension, in the Contao Manager go to the "Packages" tab and click the "Remove" button to the right of the extension.

Click on "Apply changes" to start the uninstallation. The uninstallation can now take several minutes. 

Once the extension has been uninstalled, you have to run the Contao install tool to update the database if necessary.


## Uninstalling via the command line {#uninstalling-via-command-line}

The `remove` command removes the extension from the `composer.json` and deletes the code from the project.


```bash
php composer.phar remove bugbuster/contao-banner-bundle
```

Once the extension has been uninstalled, you have to run the Contao install tool to update the database if necessary.
