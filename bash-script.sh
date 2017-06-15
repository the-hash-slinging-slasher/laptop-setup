# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install thoughtbot mac script
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
sh mac 2>&1 | tee ~/laptop.log

# install thoughtbot dotfiles
git clone git://github.com/thoughtbot/dotfiles.git ~/dotfiles
brew tap thoughtbot/formulae
brew install rcm

env RCRC=$HOME/dotfiles/rcrc rcup

# get tmux themes
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

# install virtualenv
pip install virtualenv
pip install virtualenvwrapper

# install dotfiles-local
git clone https://github.com/nsprovost/dotfiles.git ~/dotfiles-local

rcup

