{% from "vim_formula/map.jinja" import map with context %}
repo_clone:
  git.latest:
    - name: {{ map.vim_repo }}
    - target: ~/vim_server
    - require:
      - pkg: git_install
