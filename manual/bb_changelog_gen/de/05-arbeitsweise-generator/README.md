# Arbeitsweise des Generators

Gesucht werden alle Meilensteine mit mindestens einem geschlossenen Ticket.
Geschlossene Meilensteine bekommen an den Namen das Schließdatum angehangen.

Bei offenen Meilensteinen, die mindestens ein geschlossenes Ticket haben,
wird vom Datum das aktuelle Jahr genommen, Monat und Tag durch "XX" ersetzt.

Sortiert werden die Meilensteine absteigend nach Schließdatum.


## Unterscheidung "Bug" / "Feature"

Die Labels der Tickets werden untersucht, um die Tickets als Bug oder Feature zu
identifizieren zwecks getrennter Auflistung.
Dazu werden folgende Label-Namen gesucht:

Bug | Feature
--- | -------
bug | enhancement
Bug | Enhancement
defect | feature
Defect | Feature


## Ausschließen von Tickets

Weitere Label-Namen werden gesucht die als Ausschlussmerkmal dienen.
Diese können als einziges Label oder zusätzliches Label gesetzt sein:

Exclude (klein) | Exclude (groß)
--------------- | --------------
duplicate | Duplicate
question | Question
invalid | Invalid
wontfix | Wontfix


## Tipp

Die Changelog am besten generieren nach Schließung des Meilensteines für das
eine neue Release veröffentlicht werden soll und vor anlegen des Tags für dieses
Release.

Bei Zwischenversionen ist das natürlich auch zwischendurch möglich.
