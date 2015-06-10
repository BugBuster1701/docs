### Hinweise zur Verzeichnisstruktur einer Erweiterung
Das build.xml[^1] Script geht davon aus, das die Verzeichnisstruktur (lokal/GitHub) der Erweiterung so aussieht:

    meinmodul/
       |------src/
       |      |---MyClass.php
       |      |---MyModul.php
       |      `---....
       `------tests/

Meine Erweiterungen haben meist das "src" Verzeichnis nicht und haben Unterverzeichnisse die nichts mit dem Namespace zu tun haben, also eine 1:1 Struktur wie es auch installiert wird. 

    meinmodul/
         |---classes/
         |       |---MyClass.php
         |---modules/
         |       |---MyModule.php
         |---templates/...
         `---tests/

Es bleibt offen ob das angepasst werden muss oder nicht. Für die später schon von mir geplante  Anpassung an PSR-4 wäre das sicherlich sinnvoll.

Auszug einer zukünftig möglichen composer.json

    "autoload": {
        "psr-4": {
            "BugBuster\\Banner\\": "src/"
        }
    }

Für Contao 4 werden die Strukturen für Erweiterungen die zu Bundles werden nochmals anders[^2].

    src/
      |-.../ <-- neue PHP-Klassen nach PSR-4
      |-Resources/
      |    config/
      |    contao/  <-- der bisherige Contao-Code
      |    public/  <-- öffentliche Ressourcen
      |-DemoBundle.php
    tests/
      |--.../       <-- die Unit-Tests für die neuen Klassen
      |--bootstrap.php
    CHANGELOG.md
    composer.json
    phpunit.xml.dist
    README.md

Beispiel siehe hier: [Contao Calendar-Bundle](https://leofeyer.com/files/slides/2015/workshop/#36) in Contao 4.0

[^1]: Eine Basis Version von der build.xml kann man [hier per Download](http://jenkins-php.org/download/build.xml "Download build.xml") bekommen.

[^2]: Entnommen aus: [Leo Feyer - Contao 4 und Symfony](https://leofeyer.com/files/slides/2015/workshop/#35)