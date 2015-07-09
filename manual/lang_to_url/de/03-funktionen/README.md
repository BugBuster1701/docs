# Funktionen


## Sprachkürzel in die URL einfügen

Wie im Überblick erwähnt, ist es das Ziel, dass das Sprachkürzel in die URL mit eingefügt wird.
Damit das in Abhängigkeit der definierten Domains passiert, wird bei jedem Aufruf die Domain
des Servers geprüft, bei Übereinstimmung wird die Funktion in Contao aktiviert, die dafür zuständig ist.

Technisch: Dazu wird der Hook ```initializeSystem``` benutzt.


## Sprachkürzel in der Sitemap und Suchindex

Außerdem sorgt die Erweiterung dafür, dass auch in der entsprechende Sitemap und beim Aufbau 
der Suchindexe die Sprachkürzel eingefügt werden. 

Technisch: Dazu wird der Hook ```getSearchablePages``` benutzt.
