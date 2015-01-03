#!/usr/bin/env bash

# Neo4j
# https://www.digitalocean.com/community/tutorials/how-to-install-neo4j-on-an-ubuntu-vps

wget -O - http://debian.neo4j.org/neotechnology.gpg.key | apt-key add -

echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list

apt-get update

apt-get install -y neo4j

# Allow all IPs to access
# http://neo4j.com/docs/stable/security-server.html
sed -i.bak s/"#org.neo4j.server.webserver.address=0.0.0.0"/"org.neo4j.server.webserver.address=0.0.0.0"/ /etc/neo4j/neo4j-server.properties
