{% from "vim_formula/map.jinja" import map with context %}
repo_clone:
  git.latest:
    - name: {{ map.vim_repo }}
    - target: {{ map.vim_repo_target }}
    - force: True
    - require:
      - pkg: git_install
