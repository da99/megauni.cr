# megauni.cr


https://www.iamcal.com/misc/fonts/


# Development:

```sql
  CREATE USER os_user WITH NOINHERIT NOSUPERUSER NOCREATEDB NOCREATEROLE;
  CREATE USER web_app WITH NOINHERIT NOSUPERUSER NOCREATEDB NOCREATEROLE;
  CREATE DATABASE megauni_db WITH OWNER = os_user;
```

```zsh
  da_dev deps
  da_dev bin compile
  sudo --preserve-env bin/megauni server start 3000
```
# === Postgresql

* duplicated, specific activities
* cross-postings among activities
* re-posting
* posting to your own "folders" and custom (not customized) activities
* default settings:
  * "subsbcribe to this person"
    - What to subscribe? Which activities in the future?
