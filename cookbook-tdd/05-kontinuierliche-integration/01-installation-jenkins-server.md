## Installation Jenkins Server

Der Jenkins Server hat seine eigene Quellen, daher diese hinzufügen und dann installieren. Außerdem wird ein JDK und JRE benötigt. Es wird OpenJDK-7-jre und OpenJDK-7-jdk empfohlen. 

    wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
    sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > \
    /etc/apt/sources.list.d/jenkins.list' 
    sudo apt-get update
    sudo apt-get install openjdk-7-jre openjdk-7-jdk
    sudo apt-get install jenkins
    
Jenkins startet sich dann als Daemon und lauscht auf den Port 8080. Ein User 'jenkins' wird bei der Installation auch generiert.

- Startscript: /etc/init.d/jenkins
- Konfiguration: /etc/default/jenkins
- Logdatei: /var/log/jenkins/jenkins.log
- Aufruf im Webbrowser: http://192.168.17.201:8080

In der Konfigurationsdatei sind Pfade und auch der Port definiert. Wer einen anderen Port als 8080 benutzen muss, kann diesen dort ändern. Danach 'Jenkins' neu starten.

## Installation Jenkins Plugins

Es sind noch eine Reihe Jenkins Plugins zu installieren, ich habe mich für die Variante Kommandozeile entschieden.

    wget http://localhost:8080/jnlpJars/jenkins-cli.jar
    java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin checkstyle cloverphp 
    java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin crap4j dry htmlpublisher 
    java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin jdepend plot pmd violations
    java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin warnings xunit
    java -jar jenkins-cli.jar -s http://localhost:8080 safe-restart

