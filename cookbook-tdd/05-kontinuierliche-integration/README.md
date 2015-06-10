# Kontinuierliche Integration

Bei einer kontinuierlichen Integration laufen nicht nur automatische funktionelle Tests ab. Hier werden auch automatisch die Anwendungen in die Umgebung integriert und getestet, Softwaremetriken erstellt usw. bis hin zur Generierung eines Nightly Build, sofern man das denn will.

Hier folgen die Beschreibungen der jeweiligen Installationen:

- Jenkins Server, der dient als Job Management und soll auch erkennen wenn es was zu tun gibt
- Jenkins Plugins, der Jenkins Server braucht noch etwas Hilfe
- die vielen kleinen PHP Tools für die Einzeltests
- Apache Ant, dieser startet die einzelnen Tests gesteuert durch eine build.xml  

Die Konfigurationen der Tools folgt im nächsten Kapitel [Automatische Tests](../06-automatische-tests/README.md).

Dieser ganze Abschnitt ist für mich "Learning-By-Doing". Hier wird sich in den Beschreibungen also recht häufig was ändern.

Bei der Installation und Einrichtung wie folgt beschrieben, habe ich mich grob an diesen Anleitungen gehalten:

- [Installing Jenkins on Ubuntu](https://wiki.jenkins-ci.org/display/JENKINS/Installing+Jenkins+on+Ubuntu)
- [Template for Jenkins Jobs for PHP Projects](http://jenkins-php.org)

