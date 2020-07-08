# grafana-dashboard-importer

### How to use

```bash
docker run --rm -it\
    -v "$(pwd):/grafana" \
    -e GRAFANA_HOST='node214.local' \
    -e GRAFANA_PORT='30902' \
    -e GRAFANA_USERNAME='admin' \
    -e GRAFANA_PASSWORD='prom-operator' \
    goforbroke1006/grafana-dashboard-importer:latest
```
