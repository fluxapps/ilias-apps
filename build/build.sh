#!/usr/bin/env bash
ilias_version=7
build_version=02

ilias_tag=fluxms/ilias_fluxapps_ch_ilias:$build_version
nginx_tag=fluxms/ilias_fluxapps_ch_nginx:$build_version
cron_tag=fluxms/ilias_fluxapps_ch_cron:$build_version
ilserver_tag=fluxms/ilias_fluxapps_ch_ilserver:$build_version

docker build --target ilias -t $ilias_tag .
docker push $ilias_tag
docker build --target ilias -t fluxms/ilias_fluxapps_ch_ilias:latest .
docker push fluxms/ilias_fluxapps_ch_ilias:latest

docker build --target nginx -t $nginx_tag .
docker push $nginx_tag
docker build --target nginx -t  fluxms/ilias_fluxapps_ch_nginx:latest .
docker push fluxms/ilias_fluxapps_ch_nginx:latest

docker build --target cron -t $cron_tag .
docker push $cron_tag
docker build --target cron -t fluxms/ilias_fluxapps_ch_cron:latest .
docker push fluxms/ilias_fluxapps_ch_cron:latest

docker build --target ilserver -t $ilserver_tag .
docker push $ilserver_tag
docker build --target ilserver -t fluxms/ilias_fluxapps_ch_ilserver:latest .
docker push fluxms/ilias_fluxapps_ch_ilserver:latest