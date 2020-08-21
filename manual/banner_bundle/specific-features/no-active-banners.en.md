---
title: "Special case: No active banners and no default banner defined"
description: ""
url: "specific-features/no-active-banners-and-no-default-banner-defined"
weight: 10
---

If, in this case, "Hide if empty" is not activated, a DIV tag with
`class = "banner_empty"` is generated:

```html
<div class="mod_banner">
	<div class="banner_empty">
	<!-- no banner, no default banner -->
	</div>
</div>
```

With CSS can now be reached that is maintained (in this example) the height and
thus the layout of the site will not change:

```css
.mod_banner .banner_empty {
    height:90px;
}
```

The resultant text can be overridden to enforce in langconfig.php, here is an
example of an empty text:

```php
$GLOBALS['TL_LANG']['MSC']['tl_banner']['noBanner'] = '';
```
