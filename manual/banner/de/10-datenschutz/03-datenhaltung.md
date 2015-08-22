## Datenhaltung

Die Hashwerte zur Erkennung von identischen Besuchern werden bei jedem Aufruf geprüft,
zeitlich abgelaufende werden dabei gelöscht. Haltezeit entspricht dabei der Blockzeit,
Default-Wert ist 300 Sekunden, d.h. 5 Minuten.

Die Anzahl der Ansichten und Klicks je Tag wird dauerhaft gespeichert, daraus
werden die weiteren Anzeigen generiert. Diese Speicherung kann über das Backend
gelöscht werden, der Zähler fängt dann wieder bei 0 an.
