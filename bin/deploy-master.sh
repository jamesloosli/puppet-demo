#!/bin/bash

sudo rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm
sudo yum install -y \
  puppetserver \
  git

if [ -z /root/.ssh/id_rsa ]; then
  sudo ssh-keygen -t rsa -N "" -f /root/.ssh/id_rsa
fi

sudo /opt/puppetlabs/puppet/bin/gem install r10k

sudo mkdir -p /etc/puppetlabs/r10k
sudo cp /tmp/r10k.yaml /etc/puppetlabs/r10k/r10k.yaml

sudo echo "github.com,192.30.255.113 ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ==" > /root/.ssh/known_hosts

sudo /opt/puppetlabs/puppet/bin/r10k deploy environment -p
