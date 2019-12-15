#!/bin/sh

set -e

# Create a dataplane token for each service (each service has its own dataplane)
mkdir -p /vagrant/.vagrant.data/frontend/var/secrets/kuma.io/kuma-dp/
kumactl generate dataplane-token --dataplane=frontend > /vagrant/.vagrant.data/frontend/var/secrets/kuma.io/kuma-dp/token
mkdir -p /vagrant/.vagrant.data/backend/var/secrets/kuma.io/kuma-dp/
kumactl generate dataplane-token --dataplane=backend > /vagrant/.vagrant.data/backend/var/secrets/kuma.io/kuma-dp/token
mkdir -p /vagrant/.vagrant.data/elastic/var/secrets/kuma.io/kuma-dp/
kumactl generate dataplane-token --dataplane=elastic > /vagrant/.vagrant.data/elastic/var/secrets/kuma.io/kuma-dp/token
mkdir -p /vagrant/.vagrant.data/redis/var/secrets/kuma.io/kuma-dp/
kumactl generate dataplane-token --dataplane=redis > /vagrant/.vagrant.data/redis/var/secrets/kuma.io/kuma-dp/token
