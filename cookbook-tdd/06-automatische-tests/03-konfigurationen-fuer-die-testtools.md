## Konfigurationen für die Testtools

### PHPUnit
Die phpunit Aufgabe in der build.xml geht davon aus, dass eine XML-Konfigurationsdatei für PHPUnit verwendet wird, und die folgenden Ziele zur Protokollierung konfiguriert sind:

	<logging>
	 <log type="coverage-html" target="build/coverage"/>
	 <log type="coverage-clover" target="build/logs/clover.xml"/>
	 <log type="coverage-crap4j" target="build/logs/crap4j.xml"/>
	 <log type="junit" target="build/logs/junit.xml" logIncompleteSkipped="false"/>
	</logging>

Eine Beispiel phpunit.xml kann [hier geladen](http://jenkins-php.org/download/phpunit.xml.dist) werden und wird normalerweise im Hauptverzeichnis der Erweiterung abgelegt.
Somit kann man dann im Hauptverzeichnis PHPUnit manuell starten.

Das geladene Build-Script erwartet die XML-Konfigurationsdatei allerdings unter ```build/phpunit.xml```. Daher passen wir das Build-Script an, wir lassen die phpunit.xml im Hauptverzeichnis.
Anschließend prüfen wir die phpunit.xml und passen die ggf. an (Pfade relativ zur XML-Datei)

Mehr Informationen kann man finden in der [Dokumentation](https://phpunit.de/manual/current/en/appendixes.configuration.html) von PHPUnit.

### phpDox
Die phpDox Aufgabe in der build.xml geht davon aus, dass eine XML-Konfigurationsdatei verwendet wird, um die Generation der API-Dokumentation zu konfigurieren.

	<phpdox xmlns="http://phpdox.net/config">
	 <project name="name-of-project" source="src" workdir="build/phpdox">
	  <collector publiconly="false">
	   <include mask="*.php" />
	  </collector>
	
	  <generator output="build">
	   <build engine="html" enabled="true" output="api">
	    <file extension="html" />
	   </build>
	  </generator>
	 </project>
	</phpdox>

Das Build-Script erwartet die XML-Konfigurationsdatei unter ```build/phpcs.xml```.
Hier passen wir auch wieder das Build-Script an, wir legen die XML im Hauptverzeichnis an.

Mehr Informationen kann man finden in der [Dokumentation](http://phpdox.de/getting-started.html) von phpDox.

### PHP_CodeSniffer
Die phpcs und phpcs-ci Aufgaben in der build.xml gehen davon aus, dass eine XML-Konfigurationsdatei verwendet wird, um den Codierungsstandard zu konfigurieren.

	<ruleset name="name-of-your-coding-standard">
	 <description>Description of your coding standard</description>
	
	 <rule ref="Generic.PHP.DisallowShortOpenTag"/>
	 <!-- ... -->
	</ruleset>

Das Build-Script erwartet die XML-Konfigurationsdatei unter ```build/phpcs.xml```.
TODO: Testen, in der Build ist davon nichts zu sehen, feste Parameter

Mehr Informationen kann man finden in der [Dokumentation](http://pear.php.net/manual/en/package.php.php-codesniffer.annotated-ruleset.php) von PHP_CodeSniffer.

### PHPMD
Die phpmd und phpmd-ci Aufgaben in der build.xml gehen davon aus, dass eine XML-Konfigurationsdatei verwendet wird, um den Codierungsstandard zu konfigurieren.

	<ruleset name="name-of-your-coding-standard"
	  xmlns="http://pmd.sf.net/ruleset/1.0.0"
	  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	  xsi:schemaLocation="http://pmd.sf.net/ruleset/1.0.0
	                      http://pmd.sf.net/ruleset_xml_schema.xsd"
	  xsi:noNamespaceSchemaLocation="http://pmd.sf.net/ruleset_xml_schema.xsd">
	  <description>Description of your coding standard</description>
	
	  <rule ref="rulesets/codesize.xml/CyclomaticComplexity" />
	  <!-- ... -->
	</ruleset>

Das Build-Script erwartet die XML-Konfigurationsdatei unter ```build/phpmd.xml```.
Hier passen wir auch wieder das Build-Script an, wir legen die XML im Hauptverzeichnis an.

Mehr Informationen kann man finden in der [Dokumentation](http://phpmd.org/documentation/creating-a-ruleset.html) von PHPMD.

## Probedurchlauf

Als Test starten man nun ```ant``` im Hauptverzeichnis der Erweiterung und schaut was passiert und behebt den einen oder andere Konfigurationsfehler.

## Mögliche Probleme

Hier die Probleme die bisher bei mir aufgetreten sind.

* [phpunit] Cannot open file "...../tests/bootstrap.php"
    * Legen wir vorerst eine leere PHP Datei an. Später nutzen wir das z.B. für ein autoloader, generiert mit ```phpab```
* [phpunit] The Xdebug extension is not loaded. No code coverage will be generated.
    * ```sudo apt-get install php5-xdebug```
* [pdepend] PHP Warning:  DOMNode::cloneNode(): ID jdepend.bad already defined in /usr/share/php/PHP/Depend/Log/Jdepend/Chart.php on line 212
    * https://github.com/pdepend/pdepend/issues/197
    * http://manuel-pichler.de/stuff/pdepend-2.1.0snapshot201505210758.phar funktioniert
    * d.h. Installation löschen und diese dafür nehmen, über apt-get wird phpmd auch gleich entfernt, also auch gleich die phar Version installieren.
* [phpunit] PHP Fatal error:  Class 'PHP_Token_Stream' not found in /usr/share/php/PHP/CodeCoverage.php on line 692
    * Installation über apt-get entfernen inkl. autoremove! und als phar neu installieren
* [phpunit] Warning:	Deprecated configuration setting "strict" used
    * Zeile ```strict="true"``` entfernt
* [phpdox] An error occured.... None of the candidate files found ... Using --skel might get you started.
    * TODO: Lösung finden
    