# GitHub Token

GitHub erlaubt nur 50 Abfragen ohne Authentifizierung.
Daher sollte mit dem Parameter ``-t [40-stelliger-Token]`` gearbeitet werden.

Es kann auch die Umgebungsvariable ``GITHUB_CHANGELOG_GENERATOR_TOKEN``
gesetzt werden:

``export GITHUB_CHANGELOG_GENERATOR_TOKEN="40-stelliger-Token"``

Beispielsweise in der Datei ``~/.bashrc``.

Einen Token kann [hier generiert werden][1]. (Login in GitHub nötig)


[1]: https://github.com/settings/tokens/new?description=BugBuster%20Changelog%20Generator%20token
