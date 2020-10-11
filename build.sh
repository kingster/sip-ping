#!/bin/bash
rm  -rf build 
mkdir -p build/linux-amd64 
mkdir -p build/windows-amd64 
mkdir -p build/darwin-amd64 
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -v -ldflags="-s -w" -o ./build/linux-amd64/sip-ping
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -v -ldflags="-s -w" -o ./build/windows-amd64/sip-ping.exe 
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -v -ldflags="-s -w" -o ./build/darwin-amd64/sip-ping 
