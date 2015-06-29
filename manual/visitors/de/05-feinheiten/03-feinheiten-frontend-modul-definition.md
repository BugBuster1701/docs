## Feinheiten Frontend-Modul-Definition

### Templates

Jedem Frontend Modul kann per Auswahl ein Template zugeordnet werden. Zur Auswahl stehen 4 Templates:

* `mod_visitors_fe_all`
    * Liefert alle Felder die möglich sind (siehe Beispielbild oben)
* `mod_visitors_fe_hits`
    * Hier wurden die beiden Besucherzeilen entfernt
* `mod_visitors_fe_visits`
    * Hier wurden die beiden Zugriffszeilen entfernt
* `mod_visitors_fe_invisible`
    * Hier wird nichts angezeigt. Dieses Template dient dadurch zur reinen Zählung.

Es können eigene Templates erstellt werden. Diese müssen als Dateiname anfangen mit `mod_visitors_fe_` und die Endung `.xhtml` oder `.html5` haben, je nach dem welches Ausgabeformat im Layout eingestellt ist.

### Nur Gästen anzeigen

Nach dem Aktivieren dieser Funktion wird das Frontend Modul versteckt, sobald ein Mitglied (Frontend-Nutzer) angemeldet ist.

### Modul schützen

Hier kann nun definiert werden, dass die Anzeige des Moduls nur dann erfolgt, wenn Mitglieder bestimmter Gruppen online sind.

### Selbstzählung verhindern

Es gab einige Ideen, wie man noch verhindern kann, eigene Zugriffe nicht zu zählen. Besonders, wenn man mit dynamischen IPs ankommt. Hier ist nun eine Möglichkeit umgesetzt, dieses über einen angepassten User Agent String des Browsers zu tun.

Über:

* Layout -> Themes -> Frontend-Module -> Modul-Name

vom angelegtem Besucher-Modul kann im Feld "Keine Zählung bei HTTP_USER_AGENT Teilkennung:" einen String eingegeben werden, dieser sollte eindeutig sein.<br>
Beispiel: CTISOK

Es sind, wozu auch immer, auch mehrere Strings dort möglich, diese dann durch Komma getrennt eingeben.

In älteren Browsern konnte durch Anpassung der Konfiguration des Browsers der Agent String angepasst werden. Aktuell sollte ein Add-On dazu genutzt werden. Für Firefox wäre das zum Beispiel der [User-Agent-Switcher](https://addons.mozilla.org/de/firefox/addon/user-agent-switcher/)
