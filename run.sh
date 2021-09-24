#!/bin/bash

docker run --rm -ti \
	-v $HOME/.aws:/root/.aws \
	-v $(pwd):/app \
	-e AWS_PROFILE=$AWS_PROFILE \
	base10/terraformer $@