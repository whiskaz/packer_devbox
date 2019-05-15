#!/bin/sh

## Constants
readonly PIP="9.0.3"
readonly ANSIBLE="2.7"

yum update -y
yum install -y epel-release
sed -i 's|https://mirrors|http://mirrors|g' /etc/yum.repos.d/epel.repo
yum install -y git 
yum install -y python2-pip

python -m pip install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org --disable-pip-version-check --upgrade --force-reinstall \
    pip==${PIP}
python -m pip install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org --disable-pip-version-check --upgrade --force-reinstall \
    setuptools
python -m pip install --trusted-host pypi.python.org --trusted-host pypi.org --trusted-host files.pythonhosted.org --disable-pip-version-check --upgrade --force-reinstall \
    pyOpenSSL \
    requests \
    netaddr \
    jmespath \
    ansible==${1-${ANSIBLE}}
