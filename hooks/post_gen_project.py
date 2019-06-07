import os
import shutil


def remove(filepath):
    if os.path.isfile(filepath):
        os.remove(filepath)
    elif os.path.isdir(filepath):
        shutil.rmtree(filepath)


use_versioning = '{{cookiecutter.use_versioning}}' == 'y'

if not use_versioning:
    remove('punch_config.py')
    remove('punch_version.py')
    remove('release.sh')
    remove('version.txt')
