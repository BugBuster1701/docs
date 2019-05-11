## Show the Values

There are the following Insert-Tags to display the values:
```
    {{stardate::trekguide_f1|uncached}}
    {{stardate::trekguide_f2|uncached}}
    {{stardate::trekconnection|uncached}}
    {{stardate::trekguide_x11|uncached}}
    {{stardate::startrek_tng2323|uncached}}
    {{stardate::startrek_tng2322|uncached}}
    {{stardate::startrek_tos2265|uncached}}
```
The Insert-Tags are already extended with the flag "uncached", so they are safe from the Contao cache. 
This means that even if the page comes from the Contao Cache, the values are still updated before being sent to the browser.

The parameter of the Insert-Tag, e.g. "trekguide_f1" is the definition of the calculation type.


## Calculation types

Examples for  11.05.2019 21:53 o'clock


### Fictional Stardate by TrekGuide.com (Today)
Parameter: trekguide_f1

Fictional Stardate by TrekGuide.com, positive result for present time.

Show: YYMM.DD: YY = YYYY-1900

Example: 11905.11


### Fictional Stardate by TrekGuide.com (1946)
Parameter: trekguide_f2

Fictional Stardate by TrekGuide.com, positive result for present time.

Stardate 00000.0 starts on 14.07.1946, at 6:00 p.m.

Example: 72824.5


### Fictional Stardate by TrekConnection.com
Parameter: trekconnection

Stardate variant by TrekConnection.com, positive result for present time.

Example: 72858.5


### ST XI variant by TrekGuide.com
Parameter: trekguide_x11

ST XI variant by TrekGuide.com, positive result for present time.

YYYY.xx : YYYY = current year, xx = 100th part of the year

Example: 2019.36


### Star Trek TNG Sternzeit (2323) by lcars.org.uk
Parameter: startrek_tng2323

TNG Variante 1 by lcars.org.uk, negative result for present time.

Stardate 00000.0 starts on 01.01.2323, at at 00:00 a.m.

Example: -304358.66


### Star Trek TNG Sternzeit (2322) by TrekGuide.com
Parameter: startrek_tng2322

TNG Variante 2 by TrekGuide.com, negative result for present time.

Stardate 00000.0 starts on 25.05.2322, at 00:00 a.m.

Example: -303034.79


### Star Trek TOS Sternzeit (2265) by TrekGuide.com
Parameter: startrek_tos2265

TOS Variante by TrekGuide.com, negative result for present time.

Stardate 00000.0 starts on 01.05.2265, at 00:00 a.m.

Example: -666918.02
