# Installation of: Enhanced error.log

There are currently several types of installation, here a short overview.

Link to Packagist: [Enhanced error.log on Packagist.org](https://packagist.org/packages/bugbuster/errorlog_enhanced)<br>


## Installation with the Composer client

If the Composer client (Package management) installed in Contao, looking for ```bugbuster/errorlog_enhanced```, select the required version and install it.
There are no dependencies.


## Installation with ER2

If the old Extension manager / catalog installed, looking for ```errorlog_enhanced``` in the catalog and install the right version.


## Installation manual

A manual installation is possible. Download the [ZIP-File](https://github.com/BugBuster1701/errorlog_enhanced/releases) from GitHub Repository and unzip it.

On the server, create a subdirectory ```errorlog_enhanced``` in the directory ```system/modules/``` and copy the contents of the directory ```errorlog_enhanced-x.y.z``` into it.

Now should e.g. exist: ```/system/modules/errorlog_enhanced/config/config.php```.

In the backend via the system maintenance, mark the point "Purge the Internal Cache" and then click "Purge data". A database update is not necessary.
