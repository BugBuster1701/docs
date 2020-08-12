## Anzeige

Es gibt folgende Insert-Tags zum Anzeigen der Werte:
```
    {{stardate::trekguide_f1|uncached}}
    {{stardate::trekguide_f2|uncached}}
    {{stardate::trekconnection|uncached}}
    {{stardate::trekguide_x11|uncached}}
    {{stardate::startrek_tng2323|uncached}}
    {{stardate::startrek_tng2322|uncached}}
    {{stardate::startrek_tos2265|uncached}}
```
Die Insert-Tags sind hier bereits mit dem Flag "uncached" erweitert, damit sind diese 
dann auch  sicher vor dem Contao Cache. Das bedeutet, dass selbst wenn die Seite aus 
dem Contao Cache kommt, werden vor dem Senden zum Browser die Werte noch aktualisiert.

Der Parameter des Tags, z.B. "trekguide_f1" ist die Festlegung der Berechnungsart.


## Berechnungsarten

Beispiele für 11.05.2019 21:53 Uhr


### Fiktive Sternzeit nach TrekGuide.com (Today)
Parameter: trekguide_f1

Fiktive Sternzeit nach TrekGuide.com, positives Ergebnis für unsere Zeit.

Anzeige: YYMM.DD: YY = YYYY-1900

Beispiel: 11905.11


### Fiktive Sternzeit nach TrekGuide.com (1946)
Parameter: trekguide_f2

Fiktive Sternzeit nach TrekGuide.com, positives Ergebnis für unsere Zeit.

Sternzeit 00000.0 beginnt am 14.07.1946, um 18:00 Uhr.

Beispiel: 72824.5


### Fiktive Sternzeit nach TrekConnection.com
Parameter: trekconnection

Fiktive Sternzeit nach TrekConnection.com, positives Ergebnis für unsere Zeit.

Beispiel: 72858.5


### ST XI Variante nach TrekGuide.com
Parameter: trekguide_x11

ST XI Variante nach TrekGuide.com, positives Ergebnis für unsere Zeit.

YYYY.xx : YYYY = aktuelles Jahr, xx = 100. Teil des Jahres

Beispiel: 2019.36


### Star Trek TNG Sternzeit (2323) nach lcars.org.uk
Parameter: startrek_tng2323

TNG Variante 1 nach lcars.org.uk, negatives Ergebnis für unsere Zeit.

Sternzeit 00000.0 beginnt am 01.01.2323, um 00:00 Uhr.

Beispiel: -304358.66


### Star Trek TNG Sternzeit (2322) nach TrekGuide.com
Parameter: startrek_tng2322

TNG Variante 2 nach TrekGuide.com, negatives Ergebnis für unsere Zeit.

Sternzeit 00000.0 beginnt am 25.05.2322, um 00:00 Uhr.

Beispiel: -303034.79


### Star Trek TOS Sternzeit (2265) nach TrekGuide.com
Parameter: startrek_tos2265

TOS Variante nach TrekGuide.com, negatives Ergebnis für unsere Zeit.

Sternzeit 00000.0 beginnt am 01.05.2265, um 00:00 Uhr.

Beispiel: -666918.02
