__config_version__ = 1

GLOBALS = {
    {% raw %}'serializer': '{{version}}',{% endraw %}
}

FILES = ['version.txt']

VERSION = ['version']

VCS = {
    {% if cookiecutter.use_git_flow == 'y' -%}'name': 'git-flow',{% else %}'name': 'git',{%- endif %}
    {% raw %}'commit_message': "Version updated from {{ current_version }} to {{ new_version }}",{% endraw %}
}
