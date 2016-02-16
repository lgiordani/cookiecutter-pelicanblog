Welcome to your new Pelican blog environment.

# Setup

The `setup.sh` script does the following things:

    * Creates a local virtualenvironment using {{cookiecutter.python_version}}
    * Installs pelican and some other packages like fabric, markdown and bumpversion
    * Initializes git
    * Initializes git flow
    * Clones the pelican-plugins repository
    * Clones the pelican-themes repository
    * Creates a {{cookiecutter.deploy_directory}} directory which is a local clone of {{cookiecutter.deploy_repository}}
    * Creates some scripts to simplify your workflow

You may run the `setup.sh` more than once, it does not overwrite your changes.

# Virtualenv

Remember to activate your local virtualenv with

``` sh
$ source {{cookiecutter.virtualenv_name}}/bin/activate
```

# Create the blog

Pelican is already in the local virtualenv, so you have to create your site now. Check http://docs.getpelican.com/en/latest/install.html for the full documentation. Basically you have to run

``` sh
$ pelican-quickstart
```

and answer some questions.

The scripts installed in this directory work with a pelican blog installed under the `pelican` directory, so I suggest to answer "pelican" to the question "Where do you want to create your new web site? [.]"

# Create a new post

The `new_post.sh` script creates a new file inside the `pelican/content` directory. It automatically fills some metadata and collects tags from the other posts you wrote. You are supposed to edit them manually afterwards.

# Release

When you are done with your new post(s) and have the `develop` branch ready for a new release just run the `release.sh` script. It bumps the version, commits and pushes everything to your remote repository {{cookiecutter.blog_source_repo}}.

# Deploy

To deploy the new release run the `deploy.sh` script, which runs pelican with the `publishconf.py` configuration and copies the resulting static site to the {{cookiecutter.deploy_directory}} directory. After that, move to that directory, manually review it adding new posts, commit and push. 