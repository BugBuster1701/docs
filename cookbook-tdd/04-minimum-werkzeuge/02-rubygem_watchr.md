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

Die Nachricht von der VM zum Host zu senden und dort anzeigen zu lassen folgt in einem späterem Kapitel.

OK, nun wird "watchr" installiert.

    sudo gem install watchr

### Überwachungssript für watchr

"watchr" selbst brauch noch ein Script um zu wissen was zu tun ist.
Nehmen wir mal, unsere Erweiterung "bank" hätte die Unterverzeichnisse "classes" und parallel dazu "tests". Dann legen wir eine Datei ```autotest_watchr.rb``` an in ```system/modules/bank``` mit dem Inhalt:

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

    cd system/modules/bank
    watchr ./autotest_watchr.rb

Sobald nun eine Datei im Verzeichnis classes oder im Verzeichnis tests verändert wird, über ein Deploy Script, Git oder ähnliches, wird "watchr" aktiv und startet im ersten Fall phpunit mit der passende Testklasse oder startet im zweiten Fall phpunit mit der veränderten Testklasse und gibt jeweils die Ausgaben von PHPUnit wieder. Daher das Terminalfenster nicht aus den Augen lassen.

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

**TODO**: Alternative suchen für VM ohne grafische Oberfläche.
