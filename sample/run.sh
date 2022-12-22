#!/bin/bash

docker build . -t myserver:latest
docker run -it --rm \
		-e DB_PASSWD='my$up3rs3cr3tp@$$word!' \
		-e AWS_ID='ASIIAMFAKENOPZLX6J5L' \
		-e AWS_KEY='w0pE4j5k4FlUrkIIAMFAKEdiLMKLGZlxyct+GpTam' \
		-e HOST='127.0.0.1' \
		-e PORT='5555' \
		-p 80:5555
		myserver:latest 
     
