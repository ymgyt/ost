init:
	direnv allow || . .envrc
	tools/install_protoc
	go get -u github.com/golang/protobuf/protoc-gen-go

protoc:
	bin/protoc -I=proto --go_out=proto proto/task.proto

.PHONY: init protoc
