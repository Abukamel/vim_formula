{% from "vim_formula/map.jinja" import map with context %}
remove_vimrc:
  file.absent:
    - name: {{ map.vimrc }}

sym_vimrc:
  file.symlink:
    - name: {{ map.vimrc }}
    - target: {{ map.vim_repo_target }}.vimrc

remove_vim:
  file.absent:
    - name: {{ map.vimdir }}

sym_vim:
  file.symlink:
    - name: {{ map.vimdir }}
    - target: {{ map.vim_repo_target }}/.vim

remove_vundle:
  file.absent:
    - name: {{ map.vim_repo_target }}/bundle/Vundle.vim

clone_vundle:
  git.latest:
    - name: {{ map.vundle_repo }}
    - target: {{ map.vundle_target }}

install_plugins:
  cmd.run:
    - name: {{ map.plugin_install_cmd }}
