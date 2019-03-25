FROM node:10.15-alpine

RUN npm install -g serverless             # install serverless framework
RUN npm install -g sequelize-cli          # install sequelize cli (command-line tool for sequelize ORM)
RUN npm install -g fx                     # install fx (command-line JSON processing tool)
RUN apk add --update --no-cache python3   # install python
RUN pip3 install --upgrade pip            # update python package manager
RUN pip3 install awscli                   # install awscli
