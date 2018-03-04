rm -f vending/vending.proto vending.pb.go
openapi2proto -spec vending/vending.json -options >> vending/vending.proto
make -f Makefile
git add -u