pyenv install {preferred python version}
pyenv virtualenv {preferred python version} neovim3

pyenv activate neovim3
pyenv which python

pip install flake8
ln -s `pyenv which flake8` ~/bin/flake8  # Assumes that $HOME/bin is in $PATH

# That go in your path.vim file
# let g:python3_host_prog = '/full/path/to/neovim3/bin/python'
