## Konfiguration von Ant

Apache Ant wird gesteuert über eine Datei build.xml, eine Basisversion ([hier per Download](http://jenkins-php.org/download/build.xml "Download build.xml")) zum starten aller Testtools (Aufgaben) ist hier zu sehen. Diese muss Abschnittsweise noch angepasst werden.


```
<?xml version="1.0" encoding="UTF-8"?>
<project name="name-of-project" default="build">
 <!-- By default, we assume all tools to be on the $PATH -->
 <property name="toolsdir" value=""/>

 <!-- Uncomment the following when the tools are in ${basedir}/vendor/bin -->
 <!-- <property name="toolsdir" value="${basedir}/vendor/bin/"/> -->

 <target name="build"
         depends="prepare,lint,phploc-ci,pdepend,phpmd-ci,phpcs-ci,phpcpd-ci,phpunit,phpdox"
         description=""/>

 <target name="build-parallel"
         depends="prepare,lint,tools-parallel,phpunit,phpdox"
         description=""/>

 <target name="tools-parallel" description="Run tools in parallel">
  <parallel threadCount="2">
   <sequential>
    <antcall target="pdepend"/>
    <antcall target="phpmd-ci"/>
   </sequential>
   <antcall target="phpcpd-ci"/>
   <antcall target="phpcs-ci"/>
   <antcall target="phploc-ci"/>
  </parallel>
 </target>

 <target name="clean"
         unless="clean.done"
         description="Cleanup build artifacts">
  <delete dir="${basedir}/build/api"/>
  <delete dir="${basedir}/build/coverage"/>
  <delete dir="${basedir}/build/logs"/>
  <delete dir="${basedir}/build/pdepend"/>
  <delete dir="${basedir}/build/phpdox"/>
  <property name="clean.done" value="true"/>
 </target>

 <target name="prepare"
         unless="prepare.done"
         depends="clean"
         description="Prepare for build">
  <mkdir dir="${basedir}/build/api"/>
  <mkdir dir="${basedir}/build/coverage"/>
  <mkdir dir="${basedir}/build/logs"/>
  <mkdir dir="${basedir}/build/pdepend"/>
  <mkdir dir="${basedir}/build/phpdox"/>
  <property name="prepare.done" value="true"/>
 </target>

 <target name="lint"
         unless="lint.done"
         description="Perform syntax check of sourcecode files">
  <apply executable="php" failonerror="true" taskname="lint">
   <arg value="-l" />

   <fileset dir="${basedir}/src">
    <include name="**/*.php" />
    <modified />
   </fileset>

   <fileset dir="${basedir}/tests">
    <include name="**/*.php" />
    <modified />
   </fileset>
  </apply>

  <property name="lint.done" value="true"/>
 </target>

 <target name="phploc"
         unless="phploc.done"
         description="Measure project size using PHPLOC and print human readable output. Intended for usage on the command line.">
  <exec executable="${toolsdir}phploc" taskname="phploc">
   <arg value="--count-tests" />
   <arg path="${basedir}/src" />
   <arg path="${basedir}/tests" />
  </exec>

  <property name="phploc.done" value="true"/>
 </target>

 <target name="phploc-ci"
         unless="phploc.done"
         depends="prepare"
         description="Measure project size using PHPLOC and log result in CSV and XML format. Intended for usage within a continuous integration environment.">
  <exec executable="${toolsdir}phploc" taskname="phploc">
   <arg value="--count-tests" />
   <arg value="--log-csv" />
   <arg path="${basedir}/build/logs/phploc.csv" />
   <arg value="--log-xml" />
   <arg path="${basedir}/build/logs/phploc.xml" />
   <arg path="${basedir}/src" />
   <arg path="${basedir}/tests" />
  </exec>

  <property name="phploc.done" value="true"/>
 </target>

 <target name="pdepend"
         unless="pdepend.done"
         depends="prepare"
         description="Calculate software metrics using PHP_Depend and log result in XML format. Intended for usage within a continuous integration environment.">
  <exec executable="${toolsdir}pdepend" taskname="pdepend">
   <arg value="--jdepend-xml=${basedir}/build/logs/jdepend.xml" />
   <arg value="--jdepend-chart=${basedir}/build/pdepend/dependencies.svg" />
   <arg value="--overview-pyramid=${basedir}/build/pdepend/overview-pyramid.svg" />
   <arg path="${basedir}/src" />
  </exec>

  <property name="pdepend.done" value="true"/>
 </target>

 <target name="phpmd"
         unless="phpmd.done"
         description="Perform project mess detection using PHPMD and print human readable output. Intended for usage on the command line before committing.">
  <exec executable="${toolsdir}phpmd" taskname="phpmd">
   <arg path="${basedir}/src" />
   <arg value="text" />
   <arg path="${basedir}/build/phpmd.xml" />
  </exec>

  <property name="phpmd.done" value="true"/>
 </target>

 <target name="phpmd-ci"
         unless="phpmd.done"
         depends="prepare"
         description="Perform project mess detection using PHPMD and log result in XML format. Intended for usage within a continuous integration environment.">
  <exec executable="${toolsdir}phpmd" taskname="phpmd">
   <arg path="${basedir}/src" />
   <arg value="xml" />
   <arg path="${basedir}/build/phpmd.xml" />
   <arg value="--reportfile" />
   <arg path="${basedir}/build/logs/pmd.xml" />
  </exec>

  <property name="phpmd.done" value="true"/>
 </target>

 <target name="phpcs"
         unless="phpcs.done"
         description="Find coding standard violations using PHP_CodeSniffer and print human readable output. Intended for usage on the command line before committing.">
  <exec executable="${toolsdir}phpcs" taskname="phpcs">
   <arg value="--standard=PSR2" />
   <arg value="--extensions=php" />
   <arg value="--ignore=autoload.php" />
   <arg path="${basedir}/src" />
   <arg path="${basedir}/tests" />
  </exec>

  <property name="phpcs.done" value="true"/>
 </target>

 <target name="phpcs-ci"
         unless="phpcs.done"
         depends="prepare"
         description="Find coding standard violations using PHP_CodeSniffer and log result in XML format. Intended for usage within a continuous integration environment.">
  <exec executable="${toolsdir}phpcs" output="/dev/null" taskname="phpcs">
   <arg value="--report=checkstyle" />
   <arg value="--report-file=${basedir}/build/logs/checkstyle.xml" />
   <arg value="--standard=PSR2" />
   <arg value="--extensions=php" />
   <arg value="--ignore=autoload.php" />
   <arg path="${basedir}/src" />
  </exec>

  <property name="phpcs.done" value="true"/>
 </target>

 <target name="phpcpd"
         unless="phpcpd.done"
         description="Find duplicate code using PHPCPD and print human readable output. Intended for usage on the command line before committing.">
  <exec executable="${toolsdir}phpcpd" taskname="phpcpd">
   <arg path="${basedir}/src" />
  </exec>

  <property name="phpcpd.done" value="true"/>
 </target>

 <target name="phpcpd-ci"
         unless="phpcpd.done"
         depends="prepare"
         description="Find duplicate code using PHPCPD and log result in XML format. Intended for usage within a continuous integration environment.">
  <exec executable="${toolsdir}phpcpd" taskname="phpcpd">
   <arg value="--log-pmd" />
   <arg path="${basedir}/build/logs/pmd-cpd.xml" />
   <arg path="${basedir}/src" />
  </exec>

  <property name="phpcpd.done" value="true"/>
 </target>

 <target name="phpunit"
         unless="phpunit.done"
         depends="prepare"
         description="Run unit tests with PHPUnit">
  <exec executable="${toolsdir}phpunit" failonerror="true" taskname="phpunit">
   <arg value="--configuration"/>
   <arg path="${basedir}/build/phpunit.xml"/>
  </exec>

  <property name="phpunit.done" value="true"/>
 </target>

 <target name="phpdox"
         unless="phpdox.done"
         depends="phploc-ci,phpcs-ci,phpmd-ci"
         description="Generate project documentation using phpDox">
  <exec executable="${toolsdir}phpdox" dir="${basedir}/build" taskname="phpdox"/>

  <property name="phpdox.done" value="true"/>
 </target>
</project>
```

Die einzelnen Aufgaben im Überblick die direkt aufgerufen werden.

- build: Default Build Ziel, es enthält alle Werkzeuge
- build-parallel: wie build, enthält Werkzeuge wie diese parallel gestartet werden können
- clean: zum löschen von Dateien eines älteren Build Durchlaufes (z.B. Log-Dateien)
- lint: kann verwendet werden, um eine Syntaxprüfung der Projektquellen mit php -l auszuführen
- phpcs: kann verwendet werden, um Codierungsstandard Verletzungen zu finden und auszugeben
- phpcpd: kann verwendet werden, um doppelten Code zu finden und auszugeben
- phpmd: kann verwendet werden, um Quellcodes zu überprüfen nach möglichen Problemen wie  vorhandene Bugs, suboptimale Codes sowie unbenutzbare Parameter
- phpunit: kann verwendet werden, um Unit-Tests durchzuführen
- phpdox: kann verwendet werden zur Projektdokumentation
- phploc: kann verwendet werden, um die Projektgröße zu messen

Die anderen Aufgaben können natürlich auch direkt aufgerufen werden, aber das ist nicht der  beabsichtigte Zweck. Sie werden mit den oben aufgeführten Aufgaben aufgerufen.

Beim Ausführen des build.xml Skriptes werden folgende Build-Verzeichnisse erzeugt:

	build
	|-- api ...
	|-- coverage ...
	`-- logs
	    |-- checkstyle.xml
	    |-- clover.xml
	    |-- crap4j.xml
	    |-- jdepend.xml
	    |-- junit.xml
	    |-- phploc.csv
	    |-- pmd-cpd.xml
	    `-- pmd.xml

Diese Ergebnisse werden dann von Jenkins verarbeitet.