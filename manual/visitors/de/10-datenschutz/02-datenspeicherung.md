## Datenspeicherung

### IP-Adresse

Gespeichert wird nicht die IP-Adresse des Besuchers. Mit Außnahme zur Erkennung von Bots/Crawler/Spidern wird die IP-Adresse auch nicht zu weiteren Analysezwecken verwendet. 

Aus der IP-Adresse und weiteren internen Daten wird ein Pseudonym generiert in Form eines Hashwertes. Ein Rückrechnen ist denkbar, aber nur mit erheblichem Aufwand. Der Hashwert wird mit keiner anderen statistischen Auswertung in Verbindung gebracht.

### Browser-Agent und Referrer

Für den Browser-Agent werden die Kombinationen aus Browser,Sprache,OS mit einem Zählstand gespeichert, nicht der komplette Agent String. 

Beim Referrer wird die URL gespeichert mit Zählstand und Zeitstempel des letzten Auftretens, ohne Verbindung zur IP-Adresse oder Browser-Agent.

