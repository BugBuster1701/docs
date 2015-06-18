## Anzeige

Es gibt folgende Insert-Tags zum Anzeigen der Werte:

    {{visitors::katid::name}}
    {{visitors::katid::online}}
    {{visitors::katid::start}}
    {{visitors::katid::totalvisit}}
    {{visitors::katid::totalhit}}
    {{visitors::katid::todayvisit}}
    {{visitors::katid::todayhit}}
    {{visitors::katid::averagevisits}}

Die Insert-Tags können um den Präfix 'cache_' erweitert werden, damit sind diese dann auch  sicher vor dem Cache. Das bedeutet, dass selbst wenn die Seite aus dem Contao Cache kommt, werden vor dem Senden zum Browser die Werte noch aktualisiert.

    {{cache_visitors::katid::name}}
    ...

Das Modul zählt und zeigt normalerweise die Werte an. Wer für die Anzeige die Insert-Tags nutzen will, braucht das Modul weiterhin, aber nur zum Zählen. Mittels des Templates mod_visitors_fe_invisible kann es dazu unsichtbar geschaltet werden.

Die "katid" ist die Kategorie-ID, in dem der Zähler angelegt wurde. Zur Ermittlung in die Kategorieübersicht gehen, dort steht die ID direkt hinter dem Kategorie-Namen.

- [ ] ToDo: neues Bild generieren und einfügen

Bei Kategorie-ID = 1 wäre das dann also beispielsweise:

    {{cache_visitors::1::online}}

