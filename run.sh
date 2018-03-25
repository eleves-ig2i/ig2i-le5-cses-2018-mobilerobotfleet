#!/usr/bin/env bash
`GOOS=linux go build -o mobilerobotfleet`
$(docker-compose.exe up || docker-compose up) &
read -p "Press enter to continue"
$( docker-compose down || docker-compose.exe down)