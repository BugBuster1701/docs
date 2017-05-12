# Mehrere GitHub-Accounts mit unterschiedlichen SSH-Keys benutzen

Hat man mehrere GitHub-Accounts, so bekommt jeder einen eigenen public SSH-Key.
Anders erlaubt es GitHub nicht.

## Problem
Beim SSH Connect zu git@github wird der erste Key verwendet den SSH findet
und von GitHub akzeptiert wurde.
Folgt nun ein Push von Git, kann es zum Access Denied kommen, da nicht der passende
SSH-Key verwendet wurde.

**Hinweis:**

Hier ist von der Arbeit mit der Kommandozeile die Rede. Einige GUIs
gestatten es die SSH-Keys je Account zu definieren, sofern diese Multiaccount
fähig sind. GitKraken ist das beispielsweise nur in der Pro Version.

## Lösung 1
Speziell wenn es einen Hauptaccount gibt und den/die weiteren nur selten verwendet
werden bzw. wesendlich weniger Projekte hat.

### Hauptaccount
Für den Hauptaccount erstellt man eine Default Einstellung für SSH, welcher Key
verwendet werden soll beim Aufbau einer Verbindung zu github.com

In `~/.ssh/config`, einfügen:
```
host github.com
 HostName github.com
 IdentityFile ~/.ssh/id_rsa_github
 User git
```
Key-Dateiname entsprechend anpassen. Jetzt kann man damit arbeiten.

`git clone git@github.com:username/repo.git`

Alternativ, ab Git 2.10, und passend zu der Zweitaccount Methode (siehe dort):

`git config --global core.sshCommand 'ssh -i ~/.ssh/id_rsa_github -F /dev/null'`

Ein passender Eintrag wird geschrieben in der Datei `~/.gitconfig`.

Eventuell muss dazu Git durch den Service "Personal Package Archive" (kurz PPA)
aktualisiert werden, je nach Linux Version. Beispielsweise bringt Ubuntu 16.04
selbst nur Git 2.7.4 mit.

```
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt-get install git
```

### Zweitaccount
Ab Git 2.10 ist es möglich, auch in der lokalen Konfiguration jedes GitHub-Repositories
das SSH-Kommando zu definieren. Dazu in das lokale Repository wechseln, dann:

`git config core.sshCommand 'ssh -i ~/.ssh/id_rsa_github_second -F /dev/null'`

Ein passender Eintrag wird geschrieben in der Datei `.git/config`.
Key-Dateiname entsprechend anpassen.
Nun wird speziell für dieses GitHub-Repository der zweite SSH-Key verwendet.

Wenn Git 2.10 oder höher nicht verfügbar, geht es auch über eine Umgebungsvariable:
```
export GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa_github_second -F /dev/null"
git clone git@github.com:username/repo.git
```

## Lösung 2
Sind hier zu finden:
[www.bennyn.de](http://www.bennyn.de/programmierung/mehrere-github-repositories-mit-verschiedenen-ssh-keys-benutzen.html)
oder hier in englisch
[www.keybits.net](https://www.keybits.net/post/automatically-use-correct-ssh-key-for-remote-git-repo/)

Hier wird nur mit der `~/.ssh/config` gearbeitet, jedoch mit "Dummy-Hostnamen" und
die Repositories müssen nach dem `git clone` noch angepasst werden.
