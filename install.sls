{% from "vim_formula/map.jinja" import map with context %}
remove_vimrc:
  file.absent:
    - name: ~/.vimrc

sym_vimrc:
  file.symlink:
    - name: ~/.vimrc
    - target: ~/vim_server/.vimrc

remove_vim:
  file.absent:
    - name: ~/.vim

sym_vim:
  file.symlink:
    - name: ~/.vim
    - target: ~/vim_server/.vim

remove_vundle:
  file.absent:
    - name: ~/vim_ide/bundle/Vundle.vim

clone_vundle:
  git.latest:
    - name: {{ map.vundle_repo }}
    - target: {{ map.vundle_target }}

install_plugins:
  cmd.run:
    - name: {{ map.plugin_install_cmd }}
