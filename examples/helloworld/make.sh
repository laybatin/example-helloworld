#!/bin/bash
protoc -I. --go_out=plugins=grpc,paths=source_relative:./gen/go/ helloworld/helloworld.proto 
protoc -I. --grpc-gateway_out=logtostderr=true,paths=source_relative:./gen/go helloworld/helloworld.proto
protoc -I. --swagger_out=logtostderr=true:./gen/swagger helloworld/helloworld.proto

