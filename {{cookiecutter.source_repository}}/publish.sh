#!/bin/bash

cd {{cookiecutter.deploy_directory}}

git add .
git commit -m "Published"
git push