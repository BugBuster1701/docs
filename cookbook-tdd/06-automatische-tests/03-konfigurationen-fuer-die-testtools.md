## Konfigurationen für die Testtools

### PHPUnit
Die phpunit Aufgabe in der build.xml geht davon aus, dass eine XML-Konfigurationsdatei für PHPUnit verwendet wird, und die folgenden Ziele zur Protokollierung konfiguriert sind:

	<logging>
	 <log type="coverage-html" target="build/coverage"/>
	 <log type="coverage-clover" target="build/logs/clover.xml"/>
	 <log type="coverage-crap4j" target="build/logs/crap4j.xml"/>
	 <log type="junit" target="build/logs/junit.xml" logIncompleteSkipped="false"/>
	</logging>

Eine Beispiel phpunit.xml.dist kann [hier geladen](http://jenkins-php.org/download/phpunit.xml.dist) werden und wird normalerweise im Hauptverzeichnis der Erweiterung abgelegt.
Somit kann man dann im Hauptverzeichnis PHPUnit manuell starten.

Das Build-Script erwartet die XML-Konfigurationsdatei allerdings unter ```build/phpunit.xml```.
Dazu müssen die Pfade in der XML angepasst werden! (relativ zur XML-Datei)

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

Mehr Informationen kann man finden in der [Dokumentation](http://phpdox.de/getting-started.html) von phpDox.

### PHP_CodeSniffer
Die phpcs und phpcs-ci Aufgaben in der build.xml gehen davon aus, dass eine XML-Konfigurationsdatei verwendet wird, um den Codierungsstandard zu konfigurieren.

	<ruleset name="name-of-your-coding-standard">
	 <description>Description of your coding standard</description>
	
	 <rule ref="Generic.PHP.DisallowShortOpenTag"/>
	 <!-- ... -->
	</ruleset>

Das Build-Script erwartet die XML-Konfigurationsdatei unter ```build/phpcs.xml```.

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

Mehr Informationen kann man finden in der [Dokumentation](http://phpmd.org/documentation/creating-a-ruleset.html) von PHPMD.

