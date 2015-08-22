## Use text banners as a link list

Who needs a link list, and want to count the clicks on these links,
can use the Text Banner therefore.

Example how that could look (german):

![Example link list](images/banner_de_linkliste.jpg)

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

For this purpose, the template "mod_banner_list_all.html5" was reduced to the
text banner unit and adjusted (for example, the graphic at the beginning of each link)

Here the modified template. This was stored as "mod_banner_list_linklist.html5"
via back end in templates as usual.

```html
<!-- indexer::stop -->
<section class="<?php echo $this->class; ?>"<?php echo $this->cssID; ?><?php if ($this->style): ?> style="<?php echo $this->style; ?>"<?php endif; ?>>
<?php if ($this->headline): ?>
<<?php echo $this->hl; ?>><?php echo $this->headline; ?></<?php echo $this->hl; ?>>
<?php endif; ?>
<?php foreach ($this->banners as $banner): ?>
<?php if ($banner['banner_text']) : ?>
    <div style="margin-bottom: 1em;" class="banner_text" id="banner_<?php echo $banner['banner_id']; ?>">
    	<div class="banner_text_name"><?php if ($banner['banner_url']): ?>
    		<img width="16" height="16" style="padding: 0px 5px 0px 0px; margin: 0;" alt="Link" src="files/weblink.png">
			<a href="system/modules/banner/public/conban_clicks.php?<?php echo $banner['banner_key'].$banner['banner_id']; ?>" <?php echo $banner['banner_target']; ?> title="<?php echo $banner['banner_name']; ?>" ><?php endif; ?><?php echo $banner['banner_name']; ?><?php if ($banner['banner_url']): ?></a><?php endif; ?>
		</div>
    	<div class="banner_text_comment" style="padding-left: 24px;"><?php echo $banner['banner_comment']; ?></div>
    </div>
<?php endif; ?>
<?php if ($banner['banner_empty']) : ?>
	<div class="banner_empty">
	<!-- <?php echo $banner['banner_name']; ?> -->
	</div>
<?php endif; ?>
<?php endforeach; ?>
</section>
<!-- indexer::continue -->
```

> **Note** Change the file "files/weblink.png" with your own.

Download of the template: [mod_banner_list_linklist.html.zip][1]


### Front end module

The front end module is created as described, special features here are then:

* Headline
  * Here you can enter a title, in the example image has been entered there:<br>
  "Andere Seiten von mir:"
* Banner categories
  * Here the category is selected which have been created for the link list
* Banner template
  * Select here the modified template (mod_banner_list_linklist)

Then as element type "module" Install the front end module in the article.
The "Links" in the picture is still an extra header element in the article.


[1]: https://contao.ninja/banner_modul.html?file=files/module/mod_banner_list_linklist.html5.zip
