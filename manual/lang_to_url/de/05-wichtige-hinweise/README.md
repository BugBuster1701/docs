# Wichtige Hinweise

Für das Arbeiten im Backend bei der Alias Namen generiert werden, muss man genau
für diese Domain auch im Backend angemeldet sein. Grund ist, dass an der Domain
über die man angemeldet ist erkannt wird, ob die Sprache zur URL hinzugefügt
werden muss im Frontend oder nicht. Das hat aber auch Einfluss darauf, ob gleiche
Alias Namen erlaubt sind oder nicht innerhalb einer Installation/Domain.

Sonst kommt es beispielsweise in der Seitenstruktur bei gleichen Alias Namen in
zwei Sprachen zur Fehlermeldung, dass genau das nicht erlaubt wäre.

Beispiel einer Multidomain Installation:

Startpunkt | Sprache zur URL | Sprache
---------- | --------------- | -------
www.acme.de | ohne | deutsch
docs.acme.de | mit | deutsch
docs.acme.de | mit | englisch

In diesem Fall muss man sich anmelden unter docs.acme.de im Backend, um keine
Fehlermeldungen zu erhalten bei der Bearbeitung der Seitenstruktur o.ä.
innerhalb von docs.acme.de.

Am besten ist es, sich immer an der Domain anzumelden, die bearbeitet werden
soll.
