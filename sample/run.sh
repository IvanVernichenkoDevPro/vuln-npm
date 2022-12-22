#!/bin/bash

export DB_PASSWD='my$up3rs3cr3tp@$$word!'
export AWS_ID='ASIIAMFAKENOPZLX6J5L'
export AWS_KEY='w0pE4j5k4FlUrkIIAMFAKEdiLMKLGZlxyct+GpTam'
export HOST='127.0.0.1'
export PORT='5555'

docker build . -t myserver:latest
docker run -it --rm \
		-p 80:$PORT \
		--name myserver_latest \
		myserver:latest 

