# Quick VM Monitoring

This is a Docker Compose workspace to quickly setup Linux VM monitoring using Grafana, Prometheus, and Node Exporter. The dashboard used is taken from [rfmoz's Node Exporter Full Dashboard](https://github.com/rfmoz/grafana-dashboards).

## Requirements

You need to have Docker and Docker Compose installed. Running the Compose file enables **privileged** mode by default for the `node-exporter` service. You can remove it but with an exchange for not being able to monitor dbus.  

## Quick Start

1. Rename `grafana.env.example` to `grafana.env` and set `GF_SECURITY_ADMIN_PASSWORD` for Grafana dashboard admin password.

2. Run `docker compose up -d`.

3. Access the dashboard at `http://localhost:3000`.

## Additional Configurations

- By default, Prometheus retention is set to maximum storage size of 10GB. You can modify this with `--storage.tsdb.retention.size`. Read more [here](https://prometheus.io/docs/prometheus/latest/storage/).

- If you're exposing the dashboard behind reverse proxy for a domain, set `GF_SERVER_DOMAIN` in `gravana.env` to your domain. Read more [here](https://grafana.com/tutorials/run-grafana-behind-a-proxy/) and [here](https://grafana.com/docs/grafana/latest/setup-grafana/configure-docker/).

