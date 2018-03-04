rm -f vending/vending.proto
openapi2proto -spec vending/vending.json -options >> vending/vending.proto
make -f Makefile
git add -u