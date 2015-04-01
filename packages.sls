{% from "vim_formula/map.jinja" import git with context %}
git_install:
  pkg.installed:
    - name: {{ git.git }}
