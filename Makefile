all : go gateway swagger
go :
	protoc -I/usr/local/include -I. \
                        -I$(GOPATH)/src \
                        -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
                        --go_out=plugins=grpc:. \
                        vending/vending.proto

gateway :
	protoc -I/usr/local/include -I. \
              -I$(GOPATH)/src \
              -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
              --grpc-gateway_out=logtostderr=true:. \
              vending/vending.proto

swagger :
	protoc -I/usr/local/include -I. \
                          -I$(GOPATH)/src \
                          -I$(GOPATH)/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
                          --swagger_out=logtostderr=true:. \
                          vending/vending.proto




