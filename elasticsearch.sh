#!/bin/bash
sed -i '/cluster.name:/ c cluster.name: myelk' /etc/elasticsearch/elasticsearch.yml
sed -i "/ node.name:/ c   node.name: $(hostname)" /etc/elasticsearch/elasticsearch.yml
sed -i "/network.host:/ c   network.host: 0.0.0.0" /etc/elasticsearch/elasticsearch.yml
sed -i "/discovery.zen.ping.unicast.hosts:/ c  discovery.zen.ping.unicast.hosts: ["se1", "se2","se3"]" /etc/elasticsearch/elasticsearch.yml

