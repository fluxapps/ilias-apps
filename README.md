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
            - MARIADB_USER=ilias
        image: mariadb:latest
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
            - ILIAS_DATABASE_PASSWORD_FILE=/run/secrets/database_ilias_password
            - ILIAS_HTTP_PATH=http[s]://%host%
            - ILIAS_LUCENE_SEARCH=true
            - ILIAS_ROOT_USER_PASSWORD_FILE=/run/secrets/ilias_root_password
            - ILIAS_SYSTEMFOLDER_CONTACT_FIRSTNAME=...
            - ILIAS_SYSTEMFOLDER_CONTACT_LASTNAME=...
            - ILIAS_SYSTEMFOLDER_CONTACT_EMAIL=...
        image: fluxms/ilias-apps-ilias:latest
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
        image: fluxms/ilias-apps-nginx:latest
        ports:
            - [%host_ip%:]80:80
        volumes:
            - ./data/ilias/web:/var/iliasdata/web:ro
    cron:
        depends_on:
            - ilias
        environment:
            - ILIAS_CRON_USER_PASSWORD_FILE=/run/secrets/ilias_cron_password
        image: fluxms/ilias-apps-cron:latest
        secrets:
            - ilias_cron_password
        volumes:
            - ./data/ilias:/var/iliasdata
            - ./data/log/ilias:/var/log/ilias
    ilserver:
        depends_on:
            - ilias
        image: fluxms/ilias-apps-ilserver:latest
        volumes:
            - ./data/ilserver:/var/ilserverdata
            - ./data/ilias:/var/iliasdata:ro
    onlyoffice:
        environment:
            - JWT_ENABLED=true
            - JWT_SECRET=...
        image: onlyoffice/documentserver:latest
        ports:
            - [%host_ip%:]8181:80
        volumes:
            - ./data/onlyoffice-cache:/var/lib/onlyoffice
            - ./data/onlyoffice-data:/var/www/onlyoffice/Data
            - ./data/onlyoffice-postgresql:/var/lib/postgresql
            - ./data/log/onlyoffice:/var/log/onlyoffice
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
