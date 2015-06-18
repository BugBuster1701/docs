## Zählung

Eine Alternative für "nur zählen" wäre, den Insert-Tag zu nutzen, das Modul selbst verwendet diesen ebenfalls:

    {{cache_visitors::katid::count}}

Beispiel für Einbau in einen Artikel (für Kategorie-ID = 1):

    <span style="width:0px;height:0px;">{{cache_visitors::1::count}}</span>

**Achtung:** Dabei muss drauf geachtet werden, dass der Insert-Tag für die Zählung als erstes auf der Seite eingebaut wird, damit die Zählung vor der Ermittlung der Anzeigewerte erfolgt.

