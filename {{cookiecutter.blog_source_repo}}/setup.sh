#!/bin/bash

# This script sets up the blog development environment

if [[ ! -d {{cookiecutter.virtualenv_name}} ]]; then
    virtualenv {{cookiecutter.virtualenv_name}} -p {{cookiecutter.python_version}}
fi

source {{cookiecutter.virtualenv_name}}/bin/activate
pip install --upgrade pip
pip install fabric pelican markdown bumpversion

if [[ ! -d .git ]]; then
    git init
    git remote add origin git@github.com:{{cookiecutter.github_username}}/{{cookiecutter.blog_source_repo}}.git
fi

if [[ -z $(git branch | grep develop) ]]; then
    git flow init -d
fi

if [[ ! -d pelican-plugins ]]; then
    git clone https://github.com/getpelican/pelican-plugins.git pelican-plugins
fi

if [[ ! -d pelican-themes ]]; then
    git clone https://github.com/getpelican/pelican-themes.git pelican-themes
fi

if [[ ! -d {{cookiecutter.deploy_directory}} ]]; then
    git clone {{cookiecutter.deploy_repository}} {{cookiecutter.deploy_directory}}
fi

