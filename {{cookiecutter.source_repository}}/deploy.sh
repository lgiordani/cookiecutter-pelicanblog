#!/bin/bash

cd pelican
make publish
cd ..

rm -fR {{cookiecutter.deploy_directory}}/*
cp -R pelican/output/* {{cookiecutter.deploy_directory}}/
