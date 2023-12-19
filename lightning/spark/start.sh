#!/bin/bash

apt-get update
apt-get install -y libsnappy-java
bash /opt/bitnami/scripts/spark/entrypoint.sh
