#!/bin/bash
set -e

IP=34.101.171.111
ssh -o StrictHostKeyChecking=no dedysamhaz@${IP} "cd /home/dedysamhaz; rm -rf /home/dedysamhaz/part1/nodejs; mkdir -p /home/dedysamhaz/part1/nodejs"
scp -o StrictHostKeyChecking=no ../docker-compose.yaml dedysamhaz@${IP}:/home/dedysamhaz/part1/nodejs/
ssh -o StrictHostKeyChecking=no dedysamhaz@${IP} "cd /home/dedysamhaz/part1/nodejs; docker-compose pull; docker-compose down; docker-compose up -d"

