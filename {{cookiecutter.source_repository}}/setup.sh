#!/bin/bash

# This script sets up the blog development environment

if [[ ! -d .git ]]; then
    git init
    git remote add origin git@github.com:{{cookiecutter.github_username}}/{{cookiecutter.source_repository}}.git
fi

{% if cookiecutter.use_git_flow == 'y' %}
git flow init -d
{% endif %}

if [[ ! -d pelican-plugins ]]; then
    git clone https://github.com/getpelican/pelican-plugins.git pelican-plugins
fi

if [[ ! -d pelican-themes ]]; then
    git clone https://github.com/getpelican/pelican-themes.git pelican-themes
fi

if [[ ! -d {{cookiecutter.deploy_directory}} ]]; then
    mkdir {{cookiecutter.deploy_directory}}
    cd {{cookiecutter.deploy_directory}}
    git init
    git remote add origin git@github.com:{{cookiecutter.github_username}}/{{cookiecutter.deploy_repository}}.git
fi

