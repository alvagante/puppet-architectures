#!/bin/bash
cd /root
if [ ! -f puppetlabs-release-precise.deb ] ; then 
  wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
  dpkg -i puppetlabs-release-precise.deb
  apt-get update
  apt-get install -y puppet
fi

gem list | grep hiera-file
if [ "x$?" == "x1" ] ; then
  gem install hiera-file
fi

gem list | grep hiera-eyaml
if [ "x$?" == "x1" ] ; then
  gem install hiera-eyaml
fi
