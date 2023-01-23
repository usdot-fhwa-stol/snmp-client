#!/bin/bash

echo "deb [trusted=yes] https://s3.amazonaws.com/stol-apt-repository develop main" > /etc/apt/sources.list.d/carma.list
apt-get update
apt-get install -y snmp_client

# for now we need this as the packaging does not specify the dev package
apt-get install -y libsnmp-dev