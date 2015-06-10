## Installation Apache Ant

Apache Ant wird verwendet um den Test-Prozess zu automatisieren. Es steuert die Ausführung der verschiedenen Test-Werkzeuge über die build.xml.[^1] Das Build-Skript geht davon aus, dass die Regelsätze für PHP_CodeSniffer und PHPMD in ```build/phpcs.xml``` liegen bzw. in ```build/phpmd.xml```.

Die Anpassungen an dem Script erfolgen im nächsten Kapitel: [Automatische Tests](../06-automatische-tests/README.md)

[^1]: Eine Basis Version von der build.xml kann man [hier per Download](http://jenkins-php.org/download/build.xml "Download build.xml") bekommen.

