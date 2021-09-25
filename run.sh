#!/bin/bash

docker run --rm -ti \
	-v $HOME/.aws:/home/.aws \
	-v $(pwd):/app \
	-e AWS_PROFILE=$AWS_PROFILE \
	--user $(id -u):$(id -g) \
	base10/terraformer $@