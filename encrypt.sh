#!/bin/bash

export SOPS_AGE_KEY_FILE=$HOME/.sops/key.txt

sops --encrypt --age $(cat $SOPS_AGE_KEY_FILE |grep -oP "public key: \K(.*)") ./my.core.config.yaml > ./enc.core.config.yaml
