---
title: "Use text banners as a link list"
description: ""
url: "tutorials/use-text-banners-as-a-link-list"
weight: 30
---

Who needs a link list, and want to count the clicks on these links,
can use the Text Banner therefore.

Example how that could look (german):

![Example link list](../images/banner_linkliste.en.jpg)

The picture shows the first line of the target domain and is linked.
In the second line the explanation for the link.


### Definition of the links


The best is,  you create an own category, so the text banner for  the link list  
can be managed separately from the normal banner.

The following definitions are to be filled at the banners:

* Banner Name
  * Unique name for the link, for example, "acme.com"
* Banner target URL
  * Here enter the link address, for example, "http://acme.com"
* Banner Comment
  * Here enter the contents for the second line as shown in the picture.

  That's it for the first. However, this alone is not enough, the template must
  still be adjusted.


### Change the template

For this purpose, the template `mod_banner_list_all.html5` was reduced to the
text banner unit and adjusted (for example, the graphic at the beginning of each link).

Here the modified template. This was stored as `mod_banner_list_linklist.html5`
via back end in templates as usual.

```html
<!-- indexer::stop -->
<aside class="<?= $this->class; ?>"<?= $this->cssID; ?><?php if ($this->style): ?> style="<?= $this->style; ?>"<?php endif; ?>>
<?php if (($this->headline) && (!$this->headline_stop)): ?>
<<?= $this->hl; ?>><?= $this->headline; ?></<?= $this->hl; ?>>
<?php endif; ?>
<?php foreach ($this->banners as $banner): ?>
<?php if ($banner['banner_text']) : ?>
   <figure class="banner_wrap<?= $banner['banner_wrap_class']; ?>"<?= $banner['banner_wrap_id']; ?>>
      <div class="banner_text_name">
        <?php if ($banner['banner_url']): ?>
        <img width="16" height="16" alt="Link" src="files/bannerlinklist/weblink.png"><!-- Change here the path, file and width/height -->
        <a href="<?= $this->route('bugbuster_banner_frontend_clicks') ?>?<?= $banner['banner_key'].$banner['banner_id']; ?>" <?= $banner['banner_target']; ?> title="<?= $banner['banner_name']; ?>" >
        <?php endif; ?>
        <?= $banner['banner_name']; ?>
        <?php if ($banner['banner_url']): ?></a><?php endif; ?>
      </div>
      <div class="banner_text_comment" style="padding-left: 24px;"><?= $banner['banner_comment']; ?></div>
    </figure>
<?php endif; ?>
<?php if ($banner['banner_empty']) : ?>
	<div class="banner_empty">
	<!-- <?= $banner['banner_name']; ?> -->
	</div>
<?php endif; ?>
<?php endforeach; ?>
</aside>
<!-- indexer::continue -->
```

{{% notice info %}}
Change the file "files/weblink.png" with your own.
{{% /notice %}}


Download of the template: [mod_banner_list_linklist_c4.html5.zip][1]


### Front end module

The front end module is created as described, special features here are then:

* Headline
  * Here you can enter a title, in the example image has been entered there:<br>
  "Andere Seiten von mir:"
* Banner categories
  * Here the category is selected, which have been created for the link list
* Banner template
  * Select here the modified template (mod_banner_list_linklist)

Then as element type "module" Install the front end module in the article.
The "Links" in the picture is still an extra header element in the article.


[1]: https://contao.ninja/banner_modul.html?file=files/module/mod_banner_list_linklist_c4.html5.zip 
