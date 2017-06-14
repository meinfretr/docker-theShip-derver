# Docker container for a dedicated server for The Ship: Murder party (classic The Ship)

**BEFORE YOU START:** It's recommended that you make a separate Steam account for your server for security reasons.

**WARNING:** This is being tested now so if you somehow stumbled upon this and it doesn't work for you then ¯\_(ツ)_/¯

---

## Run
**NOTE:** Environment variables are in the Dockerfile, so you can set your user name password, etc there

    $ docker run -ti meinfretr/docker-theship-server

---

## TODO:
-Consider using Wine

-Make a docker-compose file

-Probably separate env file too instead of setting everything in the Docklerfile

-Maybe just a separate config file

-General cleanup and less of a hot mess when I can actually verify this
