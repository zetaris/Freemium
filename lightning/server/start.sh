#!/usr/bin/env bash

chmod -R 777 $filesystem_staging
chown -R zetaris:zetaris $filesystem_staging
rm -rf /home/zetaris/lightning/lib/com.nvidia.rapids*.jar
bash $LIGHTNING_HOME/bin/stop-lightning-server.sh
bash $LIGHTNING_HOME/bin/start-lightning-server.sh
tail -f /opt/spark/logs/*.out
