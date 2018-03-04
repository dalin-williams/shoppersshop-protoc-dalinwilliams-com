#!/usr/bin/env bash
swagger validate vending/vending.json
rm -f vending/vending.proto vending.pb.go
openapi2proto -spec vending/vending.json -options >> vending/vending.proto
make all
git add -u