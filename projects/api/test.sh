#!/bin/bash

curl -XPOST http://localhost/users/create -H 'Content-Type: application/json' -d '{ "username": "tester" }'

curl -XGET http://localhost/users

