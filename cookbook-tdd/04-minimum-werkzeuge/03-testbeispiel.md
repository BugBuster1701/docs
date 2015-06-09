## Testbeispiel

Im Normalfall wird die Klasse angelegt ohne Methoden, dann die Testklasse mit den Testmethoden. Dann werden die Tests gestartet die natürlich Fehler bringen. Nun entwickelt man nach und nach die Methoden der Klasse und lässt automatisch die Tests jeweils durchlaufen. Hat man die Tests gut genug geschrieben, also auch negativ Tests, falsche Paramerte usw., dann sollten am Ende der Entwicklung der Klassen Methoden alle Tests OK sein.

Hier werde ich das Gesamtergebnis der Entwicklung an einem Mini Beispiel zeigen.

Die Klasse TestBeispiel in system/modules/meinmodul/classes/TestBeispiel.php

	<?php

	class TestBeispiel
	{
	    public function __construct()
		{
		}
	
	    public function sayHello()
	    {
			return "Hello";
	    }
	}

Die Testklasse TestBeispielTest in system/modules/meinmodul/tests/TestBeispielTest.php

	<?php
	
	require_once dirname(__FILE__) . '/../classes/TestBeispiel.php';
	require_once 'PHPUnit/Framework/TestCase.php';
	
	class TestBeispielTest extends PHPUnit_Framework_TestCase
	{
	
	    protected $object;
	 
	    protected function setUp() 
	    {
	        $this->object = new TestBeispiel;
	    }
	 
	    protected function tearDown() 
	    {
			$this->object = null;
			parent::tearDown(); 
	    }
	
		function testSayHello() 
		{
			//Result must be equal
			$this->assertEquals('Hello',$this->object->sayHello() );
		}
	}

Nun startet man zuerst PHPUnit manuell aus dem Modul Verzeichnis:

    phpunit ./tests/TestBeispielTest.php

Das sollte dann in etwa so ausssehen:

	Running tests/TestBeispielTest.php
	PHPUnit 4.7.0 by Sebastian Bergmann.
	 
	.
	 
	Time: 0 seconds, Memory: 1.00Mb
	 
	OK (1 test, 1 assertion)


Nun startet man "watchr" wie schon beschrieben. Einige Meldungen kommen von "watchr" selbst, aber nichts von PHPUnit. Das ist OK, denn jetzt muss man ja erst mal was ändern. Eine Dateiänderung simulieren kann man auch mit "touch", damit ändert sich das Datum der Datei und der Test würde starten.

    touch classes/TestBeispiel.php

Nun sollten im Terminal Fenster, in dem "watchr" gestartet wurde, die Ausgaben von PHPUnit kommen.

Würde man nun mit einem Editor die Datei TestBeispiel.php öffnen und die Ausgabe der Methode auf "Hallo" ändern und abspeichern, sollte kurz danach im Terminal zu sehen sein:

**TODO**: Fehler Ausgabe