## Sonderfall: Keine aktiven Banner und kein Standard Banner

Wenn in diesem Fall auch "Ausblenden wenn leer" nicht aktiviert ist wird ein
DIV-Tag mit class="banner_empty" generiert:

```html
<div class="mod_banner">
	<div class="banner_empty">
	<!-- no banner, no default banner -->
	</div>
</div>
```

Mittels css kann nun erreicht werden, dass (in diesem Beispiel) die Höhe
erhalten bleibt und dadurch das Layout der Seite nicht verändert wird:

```css
.mod_banner .banner_empty {
    height:90px;
}
```

Der dabei erzeugte Text kann überschrieben werden, durch setzen in langconfig.php,
hier nun als Beispiel ein Leertext:

```php
$GLOBALS['TL_LANG']['MSC']['tl_banner']['noBanner'] = '';
```
