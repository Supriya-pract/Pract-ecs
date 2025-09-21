#!/bin/bash
# Amazon Linux 2 user-data snippet:
set -eux
yum update -y
amazon-linux-extras install -y java-openjdk11
yum install -y git docker jq
systemctl enable --now docker
usermod -a -G docker ec2-user
yum install -y python3-pip
pip3 install --upgrade awscli
# install Jenkins
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install -y jenkins
systemctl enable --now jenkins
usermod -a -G docker jenkins
curl -Lo /usr/local/bin/ecs-deploy https://raw.githubusercontent.com/some/repo/ecs-deploy && chmod +x /usr/local/bin/ecs-deploy || true
# finished
