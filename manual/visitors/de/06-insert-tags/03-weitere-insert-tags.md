## Weitere Insert-Tags

Es gibt Insert-Tags zum Anzeigen der Werte vom Tag, an dem die meisten Besucher gezählt wurden.

    {{visitors::katid::bestday::date}}   - Tag (Datum) mit den meisten Besuchern
    {{visitors::katid::bestday::visits}} - Anzahl Besucher vom Tag mit den meisten Besuchern
    {{visitors::katid::bestday::hits}}   - Anzahl Zugriffe vom Tag mit den meisten Besuchern

bzw.

    {{cache_visitors::katid::bestday::date}}
    {{cache_visitors::katid::bestday::visits}}
    {{cache_visitors::katid::bestday::hits}}

Beim "date" Insert-Tag ist noch ein optionaler Parameter möglich, um die Datumsausgabe zu formatieren. (m.d.Y , Y-m-d, etc.)

Als default wird die Systemeinstellung verwendet. Als Trennzeichen muss ein "::" verwendet werden. Ein komplettes Beispiel (hier mit Kategorie 1):

    BestDay: {{visitors::1::bestday::date::j. F Y}} mit {{visitors::1::bestday::visits}} Besuchern 
    (bei {{visitors::1::bestday::hits}} Hits)

ergibt zum Beispiel:

    BestDay: 31. August 2010 mit 25 Besuchern (bei 123 Hits)

