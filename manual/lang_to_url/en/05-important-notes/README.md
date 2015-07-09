# Important notes

When working in the back end, with alias names, you have exactly
be logged in for this domain in the back end.

Reason is, it is detected over the domain, if the language to the URL must be
added in the front end or not. But that also has affect whether the same alias
are allowed or not allowed within an installation / domain.

Otherwise it comes to the error message, for example in the page structure with
the same alias in two languages, that exactly that would not be allowed.

Example of a multi-domain installation:

Website root | Language to the URL | Language
---------- | --------------- | -------
www.acme.com | no | german
docs.acme.com | yes | german
docs.acme.com | yes | english

In this case, you have to logging in at docs.acme.com in the back end, to get
no error messages, when editing the page structure or similar inside of docs.acme.com.

Therefore, it is best to always log on to the domain that you want to edit.
