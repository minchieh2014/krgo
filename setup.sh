##!/bin/ash

set -e

sudo apt-get update -qq

echo "Installing base stack"

packagelist=(
	cgroup-lite             #this is important !!
  curl
  build-essential
  bison
  openssl
  libreadline6
  libreadline-dev
  git-core
  zlib1g
  zlib1g-dev
  libssl-dev
  libyaml-dev
  libxml2-dev
  libxslt-dev
  autoconf
  ssl-cert
  libcurl4-openssl-dev
  lxc
	zsh
	git
  python-software-properties
  golang
)

sudo DEBIAN_FRONTEND=noninteractive apt-get install -y ${packagelist[@]}

curl -L http://install.ohmyz.sh | sh

echo "GOPATH=~/code/go" >> ~/.bashrc
