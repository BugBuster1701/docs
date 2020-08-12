## Special case: multiple Banner modules on one page

Here are some hints and tips for well-known application scenarios and their
characteristics.


### One category - Two front end modules on one page

In the current version it is possible to display all the banners from one category.
The old version's multiple banners on a Web page was to be able to create
multiple front end modules and integrating them into the website. The module is
prevented that a banner will not appear more than once.

Well, it was assumed that all displayed below each other, so it made sense, the
module title to display only once. If you want to leave now for all the title's
banner front end modules, because they are distributed on the page, must be made
for this purpose a small modification to the template.

Create a copy on the back end of the template "mod_banner_list_all" and renames
it here, for example, in "mod_banner_list_special".
(the extension is automatically appended, so just like the original)
There, now you change the third line as follows:<br>
Original:

```php
<?php if (($this->headline) && (!$this->headline_stop)): ?>
```

Special:

```php
<?php if ($this->headline) : ?>
```

Now edit the banner front end modules and select the new template.<br>
Done.<br>
This is also true for more than two front end modules.


### Two categories - Two front end modules on one page

In this case, each front end module has its own category. Again, only on the
first module, the heading will appear for the same reason as in the previous section.
If you want to display in this scenario all module headers, the solution is the same.

This is also true for more than two front end modules.
