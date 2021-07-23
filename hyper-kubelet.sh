#!/bin/bash

IMAGETAG=$1

CGO_ENABLED=0 GOOS=linux make WHAT="cmd/kubelet"
CGO_ENABLED=0 GOOS=linux make WHAT="cmd/kubectl"
docker build . -t $IMAGETAG
docker push $IMAGETAG
