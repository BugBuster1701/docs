## Technical Details in the banner definition


### Flash Fallback Image

If a browser does not support Flash or JavaScript is disabled, an image can be
displayed instead (since version 2.2.0). At a local (internal) flash file, in
the same path is searched for an image file with the same name but with the
ending jpg, png or gif.

Example: for "myflash.swf" would be a fallback image: "myflash.jpg"

Was found a replacement image, the image is displayed. If necessary, the image
is converted to the dimensions of the flash file.


### Display limitation by Start / Stop dates and times

* Show from
  * If you enter a date and time value here the current banner will not be shown
  on the website before this moment.
* Show until
  * If you enter a date and time value here the current banner will not be shown
  on the website after this moment.


### Limiting the number of Views and Clicks

* Limiting the number of Views and Clicks

If you select this option, you can define a maximum number of views and/or
maximum number of clicks.

* Limiting the number of Views
  * By entering a number, the current banner is no longer displayed after this
  number of views. The "Limiting the number of Views and Clicks" has enabled it
  to stay.
* Limiting the number of Clicks
  * By entering a number, the current banner is no longer displayed after this
  number of clicks. The "Limiting the number of Views and Clicks" has enabled it
  to stay.


### Filter Domain

If you enter a domain name, this banner is used only for this domain. If you
leave the field empty, this banner is used for all domains.<br>
Example: **yourdomain.com**

The banner will be displayed, if matches the domain. But also in partial match
starting from the right. So also with access via "**sub.yourdomain.com**".
An entry in "Site structure" - "Domain Name" is not required for the filtering.
