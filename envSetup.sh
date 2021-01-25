#!/usr/bin/env bash
NAME=ttgenv

# following https://aarongorka.com/blog/portable-virtualenv/, an alternative is https://github.com/pantsbuild/pex
python3 -m venv --copies $NAME
source $NAME/bin/activate
python -m pip install setuptools pip --upgrade
python -m pip install jupyterlab
python -m pip install notebook
#Use master branch of coffea to include jec patch
python -m pip install git+https://github.com/CoffeaTeam/coffea.git@master
python -m pip install xxhash

sed -i '40s/.*/VIRTUAL_ENV="$(cd "$(dirname "$(dirname "${BASH_SOURCE[0]}" )")" \&\& pwd)"/' $NAME/bin/activate
sed -i '1s/#!.*python$/#!\/usr\/bin\/env python/' $NAME/bin/*

ipython kernel install --user --name=$NAME
