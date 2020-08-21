---
title: "Einsatz von Textbanner als Linkliste"
description: ""
url: "tutorials/einsatz-von-textbanner-als-linkliste"
weight: 30
---

Wer eine Linkliste benötigt und die Klicks auf diese Links zählen möchte,
kann dafür die Textbanner benutzen.

Beispiel wie das aussehen könnte:

![Beispiel Linkiste](../images/banner_linkliste.de.jpg)

Im Bild zu sehen ist die erste Zeile die Zieldomain und ist verlinkt.
In der zweiten Zeile die Erläuterung zu dem Link.


### Definition der Links

Am Besten wird dazu eine eigenen Kategorie angelegt, so können die Textbanner
für die Linkliste von den normalen Bannern getrennt verwaltet werden.

Folgende Definitionen sind bei den Bannern einzutragen:

* Bannername
  * Eindeutiger Name für den Link, z.B. "acme.de"
* Bannerziel-URL
  * Hier die Linkadresse eintragen, z.B. "http://acme.de"
* Bannerkommentar
  * Hier den Inhalt eintragen für die zweite Zeile wie im Bild zu sehen.

Das war es für das Erste. Das allein reicht jedoch nicht, das Template muss
noch angepasst werden.


### Template anpassen

Dazu wurde das Template `mod_banner_list_all.html5` auf den Textbanner Anteil
reduziert und angepasst (z.B. die Grafik am Anfang der einzelnen Links).

Hier das geänderte Template. Das wurde als `mod_banner_list_linkliste.html5`
über das Backend in Templates wie üblich abgelegt.

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
Die Datei "files/weblink.png" durch eine eigene Bilddatei ersetzen.
{{% /notice %}}


Download des Templates: [mod_banner_list_linklist_c4.html5.zip][1]


### Frontend Modul

Das Frontendmodul wird wie beschrieben angelegt, Besonderheiten hier sind dann:

* Überschrift
  * Hier kann eine Überschrift eingetragen werden, im Beispielbild wurde dort eingetragen:<br>
  "Andere Seiten von mir:"
* Bannerkategorien
  * Hier wird die Kategorie ausgewählt, die man für die Linkliste angelegt hat
* Bannervorlage
  * hier das geänderte Template auswählen (mod_banner_list_linkliste)

Als Elementyp "Modul" dann im Artikel einbauen. Das "Links" im Bild ist noch ein
extra Überschrift Element im Artikel.


[1]: https://contao.ninja/banner_modul.html?file=files/module/mod_banner_list_linklist_c4.html5.zip 
