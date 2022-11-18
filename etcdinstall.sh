#!/bin/bash
ETCD_RELEASE=$(curl -s https://api.github.com/repos/etcd-io/etcd/releases/latest|grep tag_name | cut -d '"' -f 4)
wget https://github.com/etcd-io/etcd/releases/download/${ETCD_RELEASE}/etcd-${ETCD_RELEASE}-linux-amd64.tar.gz
tar xvf etcd-${ETCD_RELEASE}-linux-amd64.tar.gz
cd etcd-${ETCD_RELEASE}-linux-amd64
sudo mv etcd* /usr/local/bin 

