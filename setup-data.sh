#!/bin/sh
set -eux

sudo chown -R 65534:65534 prometheus-data
sudo chown -R 472:0       grafana-data 
