#!/bin/sh

# create data directories
# NOTE: this can't be done as part of the dockerfile because /data will be remapped to a persistent volume
mkdir -p /data/datanode/opensearch/config
mkdir -p /data/datanode/opensearch/data
mkdir -p /data/graylog/journal
mkdir -p /data/graylog/libnative
mkdir -p /data/mongodb

# copy user plugins from mapped host directory
# NOTE: this works even if /home/plugin is mounted owned by root (copied files are owned by runtime)
cp /home/plugin/graylog-plugin-*.jar /usr/share/graylog-server/plugin 2>>/dev/null