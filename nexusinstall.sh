#!/bin/bash
mkdir -p /opt/nexus
cd /opt/nexus
wget https://download.sonatype.com/nexus/3/nexus-3.42.0-01-unix.tar.gz
tar xzvf nexus-3.42.0-01-unix.tar.gz
cd nexus3/bin
./nexus start
