#!/bin/bash

IP=`curl -s ifconfig.me`

aws configure set region ap-northeast-1

aws ec2 authorize-security-group-ingress --group-id sg-0511055c6511c9b9d --protocol tcp --port 22 --cidr ${IP}/32

bundle exec cap production deploy

aws ec2 revoke-security-group-ingress --group-id sg-0511055c6511c9b9d --protocol tcp --port 22 --cidr ${IP}/32
