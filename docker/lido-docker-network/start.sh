#!/bin/sh
rm -f ../../frontend/tmp/pids/server.pid
docker-compose build && docker-compose up
