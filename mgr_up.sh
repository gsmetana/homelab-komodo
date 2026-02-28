#!/bin/bash

docker compose -p komodo -f mongo.compose.yaml --env-file compose.env up -d
