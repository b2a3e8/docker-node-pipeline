FROM node:8-alpine

RUN apk add --update --no-cache python3   # install python
RUN pip3 install --upgrade pip            # update python package manager
RUN pip3 install awscli                   # install awscli
