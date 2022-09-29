# ilias-apps

*You need to adjust placeholders and create secret files (Applies everywhere)*

*At first start you may need to adjust volume permissions, look in docker logs for get more informations*

```yaml
services:
  database:
    command: --character-set-server=utf8 --collation-server=utf8_general_ci
    environment:
      - MARIADB_DATABASE=ilias
      - MARIADB_PASSWORD_FILE=/run/secrets/database_ilias_password
      - MARIADB_ROOT_PASSWORD_FILE=/run/secrets/database_root_password
      - MARIADB_USER=%db-user%
    image: mariadb:10.8.2
    secrets:
      - database_ilias_password
      - database_root_password
    volumes:
      - ./data/mysql:/var/lib/mysql
  ilias:
    depends_on:
      - database
    environment:
      - ILIAS_CRON_USER_PASSWORD_FILE=/run/secrets/ilias_cron_password
      - ILIAS_DATABASE_DATABASE=ilias
      - ILIAS_DATABASE_USER=%db-user%
      - ILIAS_DATABASE_PASSWORD_FILE=/run/secrets/database_ilias_password
      - ILIAS_HTTP_PATH=https://%ilias-domain-name%
      - ILIAS_LUCENE_SEARCH=true
      - ILIAS_ROOT_USER_PASSWORD_FILE=/run/secrets/ilias_root_password
      - ILIAS_SYSTEMFOLDER_CONTACT_FIRSTNAME=%firstname%
      - ILIAS_SYSTEMFOLDER_CONTACT_LASTNAME=%lastname%
      - ILIAS_SYSTEMFOLDER_CONTACT_EMAIL=%email%
    image: fluxms/ilias_fluxapps_ch_ilias:latest
    secrets:
      - database_ilias_password
      - ilias_cron_password
      - ilias_root_password
    volumes:
      - ./data/ilias:/var/iliasdata
      - ./data/log/ilias:/var/log/ilias
  nginx:
    depends_on:
      - ilias
    image: fluxms/ilias_fluxapps_ch_nginx:latest
    ports:
      - %IP%:80:80
    volumes:
      - ./data/ilias/web:/var/iliasdata/web:ro
  cron:
    depends_on:
      - ilias
    environment:
      - ILIAS_CRON_USER_PASSWORD_FILE=/run/secrets/ilias_cron_password
    image: fluxms/ilias_fluxapps_ch_cron:latest
    secrets:
      - ilias_cron_password
    volumes:
      - ./data/ilias:/var/iliasdata
      - ./data/log/ilias:/var/log/ilias
  ilserver:
    depends_on:
      - ilias
    image: fluxms/ilias_fluxapps_ch_ilserver:latest
    volumes:
      - ./data/ilserver:/var/ilserverdata
      - ./data/ilias:/var/iliasdata:ro
secrets:
  database_ilias_password:
    file: ./data/secrets/database_ilias_password
  database_root_password:
    file: ./data/secrets/database_root_password
  ilias_cron_password:
    file: ./data/secrets/ilias_cron_password
  ilias_root_password:
    file: ./data/secrets/ilias_root_password
```

Look at [flux-ilias](https://github.com/fluxfw/flux-ilias) for get more informations
