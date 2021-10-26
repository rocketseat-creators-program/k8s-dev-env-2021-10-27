#!/bin/bash

curl -XPOST http://localhost:3000/users/create -H 'Content-Type: application/json' -d '{ "username": "tester" }'

curl -XGET http://localhost:3000/users

