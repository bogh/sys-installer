#!/bin/bash

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# nodejs
# wget https://nodejs.org/dist/v14.17.6/node-v14.17.6-linux-x64.tar.xz


## serveless
npm install -g serverless


# cleanup
rm -fR aws/
rm -fR aws2cliv2.zip
