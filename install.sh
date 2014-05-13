#!/bin/bash

# check arguments
json="${1}"

if [ -z "$json" ]; then
    echo "Usage: ./install.sh [json]"
    exit
fi

echo "............Updating package cache............"
sudo apt-get update -o Acquire::http::No-Cache=True

echo ".......Installing Ruby and dependencies......."
sudo apt-get -y --force-yes install build-essential curl zlib1g-dev libreadline-dev libssl-dev libxml2-dev openssl libyaml-dev libopenssl-ruby1.9.1 ruby1.9.1 rubygems1.9.1 ruby1.9.1-dev

echo "...............Installing Gems................"
sudo gem install bundler
bundle install

echo ".............Following Recipes................"
sudo `which chef-solo` --config solo.rb --json-attributes $json

while true; do
    read -p "Reboot recommended. Would you like to reboot now? [Y/n]" yn
    case $yn in
        [Y]* ) sudo reboot now;;
        [Nn]* ) exit;;
        * ) echo "Please answer Yes or no.";;
    esac
done
