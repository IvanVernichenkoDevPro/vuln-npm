#!/bin/bash

HOST='127.0.0.1'
PORT='5555'

docker build . -t myserver:latest --build-arg SECRET_ARG_1="-----Very_secret_arg_value-----" --build-arg SECRET_ARG_2="=====Also-very-secret-one======"

docker run -it -d --rm \
                -p 80:$PORT \
                -e DB_PASSWD='my$up3rs3cr3tp@$$word!' \
                -e AWS_ID='ASIIAMFAKENOPZLX6J5L' \
                -e AWS_KEY='w0pE4j5k4FlUrkIIAMFAKEdiLMKLGZlxyct+GpTam' \
                -e HOST=$HOST \
                -e PORT=$PORT \
		--name myserver_latest \
		myserver:latest 

