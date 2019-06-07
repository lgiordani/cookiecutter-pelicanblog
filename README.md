# cookiecutter-pelicanblog

Version 2.0

This is a template for a pelican blog. It creates a development environment with a virtual environment and some scripts to simplify the workflow.

## Usage

You need cookiecutter, a tool to create projects from project templates. Once installed (in a virtualenv or just with pip install cookiecutter) run the following command:

``` sh
$ cookiecutter https://github.com/lgiordani/cookiecutter-pelicanblog.git
```

Answer the questions. You may safely use the default values for `version_file_name` and `deploy_directory` if you don't have specific needs. The two values `source_repository` and `deploy_repository` are the names (not the URLs) of the two repositories that will contain the source of the site and the rendered site. By default the first is `blog_source` and the second is the path used by GitHub pages `<github_username>.github.com`.

Once cookiecutter has created your blog enter the directory (named after the value of `source_repository`) and follow the `HOWTO.md` file.
