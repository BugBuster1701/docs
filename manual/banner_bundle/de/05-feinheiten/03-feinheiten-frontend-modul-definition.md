## Feinheiten in der Frontend Modul Definition


### Erster Banner für neue Besucher

Ist diese Option aktiviert, wird für jeden neuen Besucher zunächst der erste
veröffentlichte Banner in der Kategorie angezeigt. Danach erfolgt die Auswahl
wieder nach Zufall. Somit kann eine Art Wiedererkennung erreicht werden.


### Templates

Jedem Frontend Modul kann per Auswahl ein Template zugeordnet werden.
Zur Auswahl stehen 2 Templates.

* mod_banner_list_all
  * Liefert alle Felder die möglich sind
* mod_banner_list_min
  * Hier sind die Überschrift und der Name (unter dem Bild) entfernt worden,
  es wird also nur das Banner selbst angezeigt.

Beide Templates unterstützen Bild und Textbanner.

Es können eigene Templates erstellt werden. Diese müssen als Dateiname anfangen
mit `mod_banner_list_` und die Endung ".html5" haben. <br>
Beispiel: `mod_banner_list_special.html5`

Am besten legt man sich über das Backend eine Kopie eines der Templates
`mod_banner_list_...` an und nennt es dabei um, z.B. in `mod_banner_list_special`
(die Endung wird automatisch angehangen, so wie beim Original)


### Selbstzählung verhindern

Es gab einige Ideen, wie man noch verhindern kann, eigene Zugriffe nicht zu zählen.
Besonders, wenn man mit dynamischen IPs ankommt. Hier ist nun eine Möglichkeit
umgesetzt, dieses über einen angepassten User Agent String des Browsers zu tun.

Über:

* Layout -> Themes -> Frontend-Module -> Modul-Name

vom angelegten Banner-Modul kann im Feld "Keine Zählung bei HTTP_USER_AGENT Teilkennung:"
einen String eingegeben werden, dieser sollte eindeutig sein.<br>
Beispiel: CTISOK

Es sind, wozu auch immer, auch mehrere Strings dort möglich, diese dann durch
Komma getrennt eingeben.

In älteren Browsern konnte durch Anpassung der Konfiguration des Browsers der
Agent String angepasst werden. Aktuell sollte ein Add-On dazu genutzt werden.
Für Firefox wäre das zum Beispiel der [User-Agent-Switcher][1]

[1]: https://addons.mozilla.org/de/firefox/addon/user-agent-switcher/
