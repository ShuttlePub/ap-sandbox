#!/usr/bin/env bash
git clone -b master https://github.com/misskey-dev/misskey.git
cd misskey || return
cp .config/docker_example.yml .config/default.yml
cp .config/docker_example.env .config/docker.env
yq -i -Y '.allowedPrivateNetworks = [ "127.0.0.1/32", "100.64.0.0/10" ]' .config/default.yml
