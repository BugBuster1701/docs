## Automatisches Testen mit watchr (RubyGem)

Normalerweise bei der testgetriebenen Entwicklung unterbricht man das Schreiben von Code an passender Stelle, um die Tests zu starten. Zum Glück gibt es Lösungen den Test automatisch zu starten. Einer der einfachsten Methoden mittels "watchr" soll hier gezeigt werden.

Infos dazu auf Englisch auf [code.tutplus.com](http://code.tutsplus.com/tutorials/automatic-testing-for-tdd-with-php--net-26395)

### Installation von watchr

"watchr" benötigt Ruby, also vorher testen ob Ruby installiert ist.

    ruby -v

Falls nicht, dann installieren:

    sudo apt-get install ruby

Wie in der Einleitung erwähnt, gibt es die Möglichkeit sich als Popup ein Meldung auf dem Bildschirm ausgeben zu lassen, sofern man grafisch angemeldet ist am Testserver. Dazu prüfen wir ob die benötigten Libs installiert sind.

    notify-send 'Notify-Test' 'Das ist ein Test' -t 4000

Hier sollte nun eine Nachricht erscheinen für 4 Sekunden.<br>
Falls notify-send nicht installiert ist, hilft ein:

    sudo apt-get install libnotify-bin

Als Alternative die Nachricht von der VM zum Host zu senden und dort anzeigen zu lassen, folgt am Ende dieser Seite: [Alternatives Überwachungssript für watchr](02-rubygem_watchr.html#sprung1)

OK, nun wird "watchr" installiert.

    sudo gem install watchr

### Überwachungssript für watchr

"watchr" selbst braucht noch ein Script, um zu wissen was zu tun ist.
Nehmen wir mal, unsere Erweiterung "meinmodul" hätte die Unterverzeichnisse "classes" und parallel dazu "tests". Dann legen wir eine Datei ```autotest_watchr.rb``` an in ```system/modules/meinmodul``` mit dem Inhalt:

	#####
	# Watch the classes folder for changes
	watch("classes/(.*).php") do |match|
	  run_test %{tests/#{match[1]}Test.php}
	end

	#####
	# Also watch for changes to the test files
	watch("tests/.*Test.php") do |match|
	  run_test match[0]
	end

	def run_test(file)
	  unless File.exist?(file)
	    puts "#{file} does not exist"
	    return
	  end
	 
	  puts "Running #{file}"
	  result = `phpunit #{file}`
	  puts result
	end

Gestartet wird nun "watchr" im Modulverzeichnis:

    cd system/modules/meinmodul
    watchr ./autotest_watchr.rb

Sobald nun eine Datei im Verzeichnis classes oder im Verzeichnis tests verändert wird, über ein Deploy Script, Git oder ähnliches, wird "watchr" aktiv und startet im ersten Fall phpunit mit der passende Testklasse oder startet im zweiten Fall phpunit mit der veränderten Testklasse und gibt jeweils die Ausgaben von PHPUnit wieder. Daher das Terminalfenster nicht aus den Augen lassen.

### Erweitertes Überwachungssript für watchr

Das Script kann nun noch verbessert werden für spezielle Meldungen und wie erwähnt die Popup Meldung. Hier mal ein komplettes Script aus einer meiner Erweiterungen:

    # gem install watchr
    # Command to run this: watchr /path/to/file/autotest_watchr.rb
     
    #####
    system %(echo "Running autotest_watchr.rb")

    #####
    # Watch the classes folder for changes
    # If there's a change to a class, look for it's corresponding Test file.
    # Ex if Shopper.php changes, it'd run the test on ShopperTest.php in tests folder
    watch("classes/(.*).php") do |match|
      run_test %{tests/#{match[1]}Test.php}
    end

    #####
    # Also watch for changes to the test files
    watch("tests/.*Test.php") do |match|
      run_test match[0]
    end

    def run_test(file)

      clear_console

      # First, make sure the file exists
      unless File.exist?(file)
        puts "#{file} does not exist"
        return
      end
     
      # Now run the PHPUnit test on the file
      puts "Running #{file}"
      result = `phpunit #{file}`
      puts result
      
      if result.match(/OK/)
        notify "#{file}", "Tests Passed Successfuly", "dialog-information.png", 4000
      elsif result.match(/FAILURES\!/)
        notify_failed "#{file}", "#{result}"
      end
    end

    ###
    def notify_failed cmd, result
      failed_examples = result.scan(/failures:\n\n(.*)\n/)
      notify "#{cmd}", failed_examples[0], "dialog-error.png", 6000
    end

    ###
    def notify title, msg, img, show_time
      images_dir='/usr/share/icons/Mint-X/status/48'
      system "notify-send '#{title}' '#{msg}' -i #{images_dir}/#{img} -t #{show_time}"
    end

    ###
    def clear_console
      puts "\e[H\e[2J" 
    end

Hier sind die Bilder und Pfade noch von Linux Mint, die müssen für die VM noch angepasst werden, sofern wie gesagt man die Notify Meldungen denn überhaupt sehen könnte.
<span id="sprung1"></span>
### Alternatives Überwachungssript für watchr

Die notify-send Meldung kann aus der VM heraus zum Host gemeldet und dort angezeigt werden. Leider geht dabei die Meldung im Fehlerfall nicht ganz durch, daher wurde ein fester Text definiert. Was genau schief gegangen ist, sollte man sowieso in der Ausgabe von watchr/PHPUnit schauen.

Für die Übertragung der Meldung muss eine SSH Verbindung von der VM zum Host möglich sein ohne Passwort. 
(SSH-Key ohne Passphrase) Auf dem Host muss dann natürlich notify-send installiert sein.[^1]

Hier mal nur die Änderungen: (mit # auskommentiert sind die alten Zeilen)

    if result.match(/OK/)
      #notify "#{file}", "Tests Passed Successfuly", "dialog-information.png", 4000
      notify "#{file}", "Tests Passed Successfuly"
    elsif result.match(/FAILURES\!/)
      notify_failed "#{file}", "#{result}"
    end


    def notify_failed cmd, result
      #failed_examples = result.scan(/failure:\n\n(.*)\n/)
      #notify "#{cmd}", failed_examples[0], "dialog-error.png", 6000
      notify "#{cmd}", "FAILURES"
    end


    #def notify title, msg, img, show_time
    def notify title, msg
      #images_dir='/usr/share/icons/Mint-X/status/48'
      #system "notify-send '#{title}' '#{msg}' -i #{images_dir}/#{img} -t #{show_time}"
      system "ssh -X user@host 'DISPLAY=:0 notify-send \"#{title}\" \"#{msg}\" '"
    end

user@host sind hier zu ersetzen mit dem Loginnamen und dem Servernamen des Hostes bzw. des Servers auf dem die Meldung erscheinen soll.



[^1]: Bei Ubunutu,Debian bzw. je nach Desktopumgebung. Bei manchen wird z.B. xfce4-notifyd verwendet. Siehe dazu bei [Ubuntuusers](http://wiki.ubuntuusers.de/Benachrichtigungsdienst)