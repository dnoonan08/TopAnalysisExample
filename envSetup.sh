#!/usr/bin/env bash
NAME=ttgenv


if [[ "$HOSTNAME" == "cmslpc"* ]]
then
    LCG=/cvmfs/sft.cern.ch/lcg/views/LCG_96python3/x86_64-centos7-gcc8-opt
    source ${LCG}/setup.sh

    python -m venv --copies $NAME
    source $NAME/bin/activate
    python -m pip install setuptools pip --upgrade
    python -m pip install git+https://github.com/CoffeaTeam/coffea.git@master
    python -m pip install xxhash

    sed -i '40s/.*/VIRTUAL_ENV="$(cd "$(dirname "$(dirname "${BASH_SOURCE[0]}" )")" \&\& pwd)"/' $NAME/bin/activate
    sed -i '1s/#!.*python$/#!\/usr\/bin\/env python/' $NAME/bin/*
    sed -i "2a source ${LCG}/setup.sh" $NAME/bin/activate
    sed -i "4a source ${LCG}/setup.csh" $NAME/bin/activate.csh

else

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
fi
ipython kernel install --user --name=$NAME
