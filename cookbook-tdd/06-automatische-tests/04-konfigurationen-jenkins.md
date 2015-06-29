## Konfiguration Jenkins

### Installation  PHP Job Template

	wget http://localhost:8080/jnlpJars/jenkins-cli.jar
	curl -L https://raw.githubusercontent.com/sebastianbergmann/php-jenkins-template/master/config.xml | \
     java -jar jenkins-cli.jar -s http://localhost:8080 create-job php-template

oder manuell:

	cd $JENKINS_HOME/jobs
	mkdir php-template
	cd php-template
	wget https://raw.github.com/sebastianbergmann/php-jenkins-template/master/config.xml
	cd ..
	chown -R jenkins:jenkins php-template/

Jenkins Konfiguration neu laden, hier mir der Jenkins CLI

	java -jar jenkins-cli.jar -s http://localhost:8080 reload-configuration

## Job einrichten

* Klick "New Job" / "Element anlegen"
* Eingabe von "Job Name" / "Element Name"
* Auswahl "Copy existing job" / "Element kopieren" und eingeben "php-template" im "Copy from" / "Kopiere von" Feld.
* Klick "OK".
* Haken entferne bei "Disable Build" / "Projekt deaktivieren" Option.
* Ausfüllen "Source Code Management" Informationen.
* Konfiguriere einen "Build Trigger", zum Beispiel "Poll SCM".
* Klick "Save".

Arbeistbereich Pfad musste noch gesetzt werden, also den Pfad in das Hauptverzeichnis der Erweiterung
