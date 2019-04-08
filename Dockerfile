FROM node:10.15-stretch

# install cypress.io dependencies
RUN apt-get update && apt-get install -y \
    libgtk2.0-0 \
    libnotify-dev \
    libgconf-2-4 \
    libnss3 \
    libxss1 \
    libasound2 \
    xvfb

# install awscli dependencies
RUN apt-get update && apt-get install -y \
    python3 python3-pip

RUN npm install -g serverless             # install serverless framework
RUN pip3 install --upgrade pip            # update python package manager
RUN pip3 install awscli                   # install awscli

# print versions of tools
RUN echo "node version:        $(node -v) \n" \
         "npm version:         $(npm -v) \n" \
         "awscli verison:      $(aws --version) \n" \
         "serverless verison:  $(serverless -v) \n" \
         "debian version:      $(cat /etc/debian_version) \n"
