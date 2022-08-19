.PHONY: protos, build
MODULE="github.com/abitofhelp/abcdapis"

protos:
	protoc --proto_path=. --go_out=. --go_opt=module=${MODULE} --go-grpc_out=. --go-grpc_opt=module=${MODULE} ./*.proto

build:
	go build ./...


