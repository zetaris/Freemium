#!/bin/bash
psql -U admin -d metastore  -f /scripts/dev-user.sql
