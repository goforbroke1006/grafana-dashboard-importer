#!/usr/bin/env bash

#GRAFANA_HOST='node214.local'
#GRAFANA_PORT='30902'
#GRAFANA_USERNAME='admin'
#GRAFANA_PASSWORD='prom-operator'

find ./ -type f -wholename '*.json' -print0 | xargs -I '{}' realpath "{}" | sort | while read full_name
do
#for full_name in ${FILES}; do
    echo "Start import ${full_name} ..."

    curl -X POST \
        -H "Accept: application/json" \
        -H "Content-Type: application/json" \
        -d "@${full_name}" \
        "http://${GRAFANA_USERNAME}:${GRAFANA_PASSWORD}@${GRAFANA_HOST}:${GRAFANA_PORT}/api/dashboards/db"
done

