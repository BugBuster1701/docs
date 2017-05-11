# Functions


## Add the language to the URL for individual domains

As mentioned in the overview, it is the job to add the language to the URL for individual domains.
To make that happen, depending on the defined domains, is checked on every front end call the domain of the server.
If they match, the original function in Contao is activated.

Technical: It will be used the Hook ```initializeSystem```.


## Add the language to the Sitemap and search index

Also in the relevant Sitemap and on build the search indexes, it will be inserted the language.

Technical: It will be used the Hook ```getSearchablePages```.
