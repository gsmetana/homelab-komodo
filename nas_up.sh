#!/bin/bash

docker compose -p periphery-nas -f periphery.compose.yaml --env-file compose.env up -d
