init:
	direnv allow || . .envrc
	tools/install_protoc
	go get -u github.com/golang/protobuf/protoc-gen-go

protoc:
	protoc --proto_path=proto --go_out=plugins=grpc:./proto/ proto/*.proto

.PHONY: init protoc
