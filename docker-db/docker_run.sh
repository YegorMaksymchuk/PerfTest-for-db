#!/usr/bin/env bash
docker build -t jdbc-mysql .
docker run -d -it --name=jdbc-m -p 3306:3306 -p 4444:4444 jdbc-mysql
docker start jdbc-m