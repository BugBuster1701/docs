# Installation of: Add Language To Url

There are currently several types of installation, here a short overview.

Link to Packagist: [Add Language To Url on Packagist.org](https://packagist.org/packages/bugbuster/contao-lang_to_url)<br>


## Installation with the Composer client

If the Composer client (Package management) installed in Contao, looking for ```bugbuster/contao-lang_to_url```, select the required version and install it.
There are no dependencies.


## Installation with ER2

Not possible because there will be no publication in the ER2.


## Installation manual

A manual installation is possible. Download the [ZIP-File](https://github.com/BugBuster1701/contao-lang_to_url/releases) from GitHub Repository and unzip it.

On the server, create a subdirectory ```lang_to_url``` in the directory ```system/modules/``` and copy the contents of the directory ```src``` into it.

Now should e.g. exist: ```/system/modules/lang_to_url/config/config.php```.

In the backend via the system maintenance, mark the point "Purge the Internal Cache" and then click "Purge data". A database update is not necessary.


