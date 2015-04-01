{% from "vim_formula/map.jinja" import map with context %}
repo_clone:
  git.latest:
    - name: {{ map.vim_repo }}
    - target: ~/
    - require:
      - pkg: git_install
