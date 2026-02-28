#!/bin/bash

export SOPS_AGE_KEY_FILE=$HOME/.sops/key.txt

sops --decrypt --age $(cat $SOPS_AGE_KEY_FILE |grep -oP "public key: \K(.*)") ./enc.core.config.yaml > ./my.core.config.yaml
