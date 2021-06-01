#!/bin/sh

cd /go/src/app

if [ $GIN_MODE = 'release' ];then
  # production
  go run main.go
else
  # development
  fresh
fi
