#!/bin/bash

sudo rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
sudo yum install -y \
  puppetserver

#sudo /opt/puppetlabs/puppet/bin/gem install r10k

