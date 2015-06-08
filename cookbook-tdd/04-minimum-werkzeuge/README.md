# Minimum an Werkzeugen fuer TDD

Zum Testen braucht man ein Testwerkzeug, hier habe ich mich für PHPUnit entschieden. Damit das nun auch noch automatisch startet sobald sich Dateien der zu testenden Erweiterung ändern, wurde noch ein RubyGem "watchr" installiert.

"watchr" beobachtet per Konfiguration gesteuert, ob sich z.B. Klassen oder Testklassen einer Erweiterung ändern. Wenn ja wird darauhin sofort PHPUnit gestartet. Man muss aber dafür das Update der Dateien in die Testumgebung selbst durchführen.

Als Ergebnis wird, im Original Script, noch auf dem Bildschirm eine Info angezeigt als Popup. Dazu muss man allerdings grafisch angemeldet sein (Gnome, KDE, ...). Da das in dieser VM nicht gegeben ist [1], wird hier noch nach einer Alternative gesucht bzw. der Möglicheit die Notification auf dem Host anzeigen zu lassen, an dem ich eine grafische Oberfläche habe.  


----------

[1] : Natürlich könnte man auch die VM mit einer grafischen Oberfläche laufen lassen, z.B. auf einem zweiten Monitor.