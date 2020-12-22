#! /bin/bash

sudo yum update -y

sudo yum install git -y
git version

sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user

docker info
