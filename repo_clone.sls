{% from "vim_formula/map.jinja" import map with context %}
repo_clone:
  git.latest:
    - name: {{ map.vim_repo }}
    - target: $HOME/vim_server
    - force: True
    - require:
      - pkg: git_install
