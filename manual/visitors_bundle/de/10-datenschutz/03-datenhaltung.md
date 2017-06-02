## Datenhaltung

Die Hashwerte zur Erkennung von unterschiedlichen Besuchern werden bei jedem Aufruf
geprüft, zeitlich abgelaufende werden dabei gelöscht. Haltezeit entspricht dabei
der Blockzeit, Default-Wert ist 1800 Sekunden, d.h. 30 Minuten.

Referrer Werte werden je nach Art derzeit nach 90 bzw. 120 Tagen gelöscht.

Die Anzahl der Besucher/Zugriffe je Tag wird dauerhaft gespeichert, daraus werden
die weiteren Anzeigen generiert. Diese Speicherung kann über das Backend gelöscht
werden, der Zähler fängt dann wieder bei 0 an.
