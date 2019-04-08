FROM node:10.15-alpine

RUN mkdir -m 755 ~/.cache                 # create cache dir
RUN npm install -g serverless             # install serverless framework
RUN apk add --update --no-cache python3   # install python
RUN pip3 install --upgrade pip            # update python package manager
RUN pip3 install awscli                   # install awscli
