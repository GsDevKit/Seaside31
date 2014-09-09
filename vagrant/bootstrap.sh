#!/usr/bin/env bash
echo "Installing base packages"
sudo cp /vagrant/nginx.repo /etc/yum.repos.d/
sudo yum -y install wget unzip nginx nano git
curl -O http://seaside.gemtalksystems.com/scripts/installGemstone.sh
sh installGemstone.sh 3.1.0.5