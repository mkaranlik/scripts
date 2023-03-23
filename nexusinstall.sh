#!/bin/bash
mkdir -p /$HOME/nexus
cd /$HOME/nexus
wget https://download.sonatype.com/nexus/3/nexus-3.42.0-01-unix.tar.gz
tar xzvf nexus-3.42.0-01-unix.tar.gz
cd /$HOME/nexus/nexus-3.42.0-01/bin
./nexus start
