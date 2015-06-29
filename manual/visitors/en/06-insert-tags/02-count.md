## Count

An alternative to "counting only" would be to use an Insert Tag. The font end module itself uses this as well: 

	 {{cache_visitors::catid::count}}

Example for installation in an article (for category ID = 1):

     <span style="width:0px;height:0px;">{{cache_visitors::1::count}}</span>

> **Caution** It must be noted, that the Insert Tag for the count will be installed at first on the page, so that the counting is performed out before the determination of the values.

