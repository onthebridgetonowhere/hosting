#!/bin/bash

git clone https://github.com/plausible/analytics

cd analytics

git checkout 3242327d

docker build -t plausible/analytics . 

cd ..

git clone https://github.com/BytemarkHosting/docker-smtp

cd docker-smtp/stretch && docker build -t bytemark/smtp . 

cd ../..

docker-compose up -d