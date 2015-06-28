## More Insert Tags

There are Insert Tags for display the values of the day with the most visitors. 

	 {{visitors::catid::bestday::date}}   - Day (Date) with the most visitors
	 {{visitors::catid::bestday::visits}} - Number of visitors of the day with most visitors
	 {{visitors::catid::bestday::hits}}   - Number of hits of the day with most visitors
	or
	 {{cache_visitors::catid::bestday::date}}
	 {{cache_visitors::catid::bestday::visits}}
	 {{cache_visitors::catid::bestday::hits}}

The "date" insert-tag has an optional parameter to format the date output. (m.d.Y , Y-m-d, etc.) The system setting is used as default. As a separator, a "::" are used.

A complete example (with category 1):  

	Best Day: {{visitors::1::bestday::date::j. F Y}} with 
	{{visitors::1::bestday::visits}} visitors (and {{visitors::1::bestday::hits}} 
	hits)

results:

Best Day: 31. August 2010 with 25 visitors (and 123 hits)
