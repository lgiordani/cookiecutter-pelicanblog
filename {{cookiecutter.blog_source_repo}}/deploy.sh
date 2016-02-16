#!/bin/bash

source {{cookiecutter.virtualenv_name}}/bin/activate

cd pelican
pelican content -s publishconf.py
cd ..

rm -fR {{cookiecutter.deploy_directory}}/*
cp -R pelican/output/* {{cookiecutter.deploy_directory}}/

echo "Move to the {{cookiecutter.deploy_directory}} directory, check, commit and push"
